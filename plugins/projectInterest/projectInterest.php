<?php

/* ====================
  [BEGIN_COT_EXT]
  Hooks=projects.edit.realized, reviews.add.add.done
  [END_COT_EXT]
  ==================== */

defined('COT_CODE') or die('Wrong URL');

$tax = $cfg['plugin']['projectInterest']['tax'];
$msg = $cfg['plugin']['projectInterest']['msg'];
$isReview = $cfg['plugin']['projectInterest']['review'];

$projectInterest = new projectInterest();

if( $_GET['e'] == 'reviews' ){
    //It's review
    if( $isReview == 1 ){
        
        $reviewId = $itemid;
        
        $review = $projectInterest->getReview($reviewId);
        
        $deal = $review['item_code'];
        
        $project = $projectInterest->getProject($deal);
        
        $msg = $projectInterest->preparedMessage($msg, $project);

        $offer = $projectInterest->getProjectOffer($deal);

        $performer = $offer['offer_userid'];
        $paySum = $offer['offer_cost_min'] * $tax / 100;
        
        if( !$projectInterest->hasPaymnet($performer, $deal) ){
            $projectInterest->addPayment($performer, $msg, $paySum);
        }
        
    }
    
}else{
    //it's projects
    $deal = (int)$id;
    $project = $item;
    
    $msg = $projectInterest->preparedMessage($msg, $project);

    $offer = $projectInterest->getProjectOffer($deal);

    $performer = $offer['offer_userid'];
    $paySum = $offer['offer_cost_min'] * $tax / 100;
    
    if( !$projectInterest->hasPaymnet($performer, $deal) ){
        $projectInterest->addPayment($performer, $msg, $paySum);
    }
}

class projectInterest{
    
    public $db, $sys;
    
    public function __construct() {
        $this->db = $GLOBALS['db'];
        $this->sys = $GLOBALS['sys'];
    }
    
    public function hasPaymnet($performer, $deal){
        $db = $this->db;

        $searchQuery = "Процент по сделке%id=$deal%";

        $query = "SELECT * FROM payments"
                ." WHERE pay_desc LIKE '$searchQuery' LIMIT 1";
        $sql = $db->query($query);

        return ($sql->rowCount() > 0);
    }

    public function addPayment($performer, $msg, $paySum){
        $db = $this->db;
        $sys = $this->sys;

        $payorder = array(
            'pay_userid' => $performer,
            'pay_desc' => $msg,
            'pay_summ' => $paySum,
            'pay_cdate' => $sys['now'],
            'pay_status' => 'new',
            'pay_area' => 'payorders',
        );

        $db->insert('payments', $payorder);
    }

    public function getProject($id){
        $db = $this->db;
        
        $sql = $db->query("SELECT * FROM projects WHERE item_id=$id LIMIT 1");
        
        cot_die($sql->rowCount() == 0);
        
        $project = $sql->fetch();
        
        return $project;
    }
    
    public function getProjectOffer($id){
        $db = $this->db;
        
        $query = "SELECT * FROM projects_offers" 
            ." WHERE offer_pid = '$id' AND offer_choise = 'performer' LIMIT 1";
        
        $sql = $db->query($query);
        
        $offer = $sql->fetch();
        
        return $offer;
    }
    
    public function getReview($itemId){
        $db = $this->db;
        
        $sql = $db->query("SELECT * FROM reviews WHERE item_id=$itemId LIMIT 1");
        
        cot_die($sql->rowCount() == 0);
        
	$review = $sql->fetch();
        
        return $review;
    }
    
    public function preparedMessage($msg, $project){
        
        $serverName = $_SERVER['SERVER_NAME'];
        
        $id = $project['item_id'];
        $title = $project['item_title'];
        
        $link = "<a href='http://$serverName/index.php?e=projects&id=$id'>$title</a>";
        
        $msg = str_replace("%deal%", $link, $msg);
        
        return $msg;
    }
    
}
