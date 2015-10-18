<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=admin.home.mainpanel
Order=1
[END_COT_EXT]
==================== */

defined('COT_CODE') or die('Wrong URL');

require_once cot_incfile('bstat', 'plug');

$tt = new XTemplate(cot_tplfile('bstat.admin.home.mainpanel', 'plug'));

$sql = $db->query("SELECT SUM(pay_summ) AS summ, p.*, u.* FROM $db_payments AS p
	LEFT JOIN $db_users AS u ON u.user_id=p.pay_userid
	WHERE p.pay_area='balance' AND p.pay_status='done' GROUP BY p.pay_userid HAVING SUM(p.pay_summ) > 0 ORDER BY summ DESC");

$jj = 0;
while($bal = $sql->fetch()){
	$jj++;

	$tt->assign(cot_generate_usertags($bal, 'BAL_ROW_USER_'));
	$tt->assign(array(
		'BAL_ROW_SUMM' => $bal['summ'],
		"BAL_ROW_ODDEVEN" => cot_build_oddeven($jj)
	));
	$tt->parse('MAIN.BAL_ROW');
}

$tt->parse('MAIN');
$line = $tt->text('MAIN');
