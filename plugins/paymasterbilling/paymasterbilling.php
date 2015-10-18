<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=standalone, ajax
 * [END_COT_EXT]
 */
/**
 * PayMaster billing Plugin
 *
 * @package paymasterbilling
 * @version 1.0.0
 * @author Yahor Nikitsionak
 * @license BSD
 */
defined('COT_CODE') && defined('COT_PLUG') or die('Wrong URL');


require_once cot_incfile('paymasterbilling', 'plug');
require_once cot_incfile('payments', 'module');

$m = cot_import('m', 'G', 'ALP');
$pid = cot_import('pid', 'G', 'INT');

switch ($m) {

    default :
        if (!empty($pid) && $pinfo = cot_payments_payinfo($pid)) {

            cot_block($pinfo['pay_status'] == 'new' || $pinfo['pay_status'] == 'process');
            $amount = $pinfo['pay_summ'];
            $merchant_id = $cfg['plugin']['paymasterbilling']['merchant_id'];
            
            $testmode = $cfg['plugin']['paymasterbilling']['testmode'];

            if (++$cfg['plugin']['paymasterbilling']['merchant_id']) {
                $payment_system = 18;
            }
            
            /* === Hook === */
            foreach (cot_getextplugins('paymaster.add') as $pl){
                include $pl;
            }
            /* ===== */

            $t->assign(array(
                'plaginUrl' => $cfg['mainurl'] . "/plugins/paymasterbilling",
                'merchant_id' => $merchant_id,
                'amount' => $amount,
                'pid' => $pinfo['pay_id'],
                'desc' => $pinfo['pay_desc'],
                'LMI_SUCCESS_URL' => $cfg['mainurl'] . "/" . cot_url('paymasterbilling', 'm=success'),
                'LMI_FAIL_URL' => $cfg['mainurl'] . "/" . cot_url('paymasterbilling', 'm=fail'),
                'payment_system' => $payment_system,
                'testmode' => $testmode,
            ));
            $t->parse("MAIN.BILLINGFORM");

            cot_payments_updatestatus($pid, 'process');
        } else {
            cot_die();
        }

        break;

    case "resultBillingPage":

        $merchant_id = $cfg['plugin']['paymasterbilling']['merchant_id'];
        
        $pid = (int)$_POST['LMI_PAYMENT_NO'];
        
        $pinfo = cot_payments_payinfo($pid);

        if (isset($_POST['LMI_PREREQUEST']) && $_POST['LMI_PREREQUEST'] == 1) {
            $LMI_PREREQUEST = $_POST['LMI_PREREQUEST'];
            $LMI_MERCHANT_ID = $_POST['LMI_MERCHANT_ID'];
            $LMI_PAYMENT_AMOUNT = $_POST['LMI_PAYMENT_AMOUNT'];
            $LMI_PAYMENT_NO = $_POST['LMI_PAYMENT_NO'];
            $LMI_MODE = $_POST['LMI_MODE'];
            $LMI_PAYMENT_SYSTEM = $_POST['LMI_PAYMENT_SYSTEM'];
            $LMI_PAYMENT_DESC = $_POST['LMI_PAYMENT_DESC'];
            
            /* === Hook === */
            foreach (cot_getextplugins('paymaster.check') as $pl){
                include $pl;
            }
            /* ===== */

            if ($merchant_id != $LMI_MERCHANT_ID) {
                die;
            }
            
            if ($LMI_PAYMENT_AMOUNT != $pinfo['pay_summ']) {
                die;
            }
            
            echo 'YES';
        } else {
            $LMI_MERCHANT_ID = $_POST['LMI_MERCHANT_ID'];
            $LMI_PAYMENT_AMOUNT = $_POST['LMI_PAYMENT_AMOUNT'];
            $LMI_PAID_AMOUNT = $_POST['LMI_PAID_AMOUNT'];
            $LMI_PAYMENT_NO = $_POST['LMI_PAYMENT_NO'];
            $LMI_MODE = $_POST['LMI_MODE'];
            $LMI_SYS_PAYMENT_ID = $_POST['LMI_SYS_PAYMENT_ID'];
            $LMI_PAYMENT_SYSTEM = $_POST['LMI_PAYMENT_SYSTEM'];
            $LMI_SYS_PAYMENT_DATE = $_POST['LMI_SYS_PAYMENT_DATE'];
            $LMI_PAYER_IDENTIFIER = $_POST['LMI_PAYER_IDENTIFIER'];
            $LMI_PAYMENT_DESC = $_POST['LMI_PAYMENT_DESC'];
            $LMI_HASH = $_POST['LMI_HASH'];
            
            /* === Hook === */
            foreach (cot_getextplugins('paymaster.result') as $pl){
                include $pl;
            }
            /* ===== */

            if ($merchant_id != $LMI_MERCHANT_ID) {
                die;
            }
            
            if ($LMI_PAYMENT_AMOUNT != $pinfo['pay_summ']) {
                die;
            }

            cot_payments_updatestatus($pid, 'paid');
        }
        die;
        break;

    case "success":
        
        if (!empty($pid) && $pinfo = cot_payments_payinfo($pid)) {
            if (!empty($pinfo['pay_code']) && $prinfo = cot_payments_payinfo($pinfo['pay_code'])) {
                $redirect = $prinfo['pay_redirect'];
            }
        }

        $t->assign(array(
            "BILLING_TITLE" => $L['paymasterbilling_error_title'],
            "BILLING_ERROR" => $L['paymasterbilling_error_done']
        ));

        if ($redirect) {
            $t->assign(array(
                "BILLING_REDIRECT_TEXT" => sprintf($L['paymasterbilling_redirect_text'], $redirect),
                "BILLING_REDIRECT_URL" => $redirect,
            ));
        }

        $t->parse("MAIN.ERROR");

        break;

    case "fail":
        $t->assign(array(
            "BILLING_TITLE" => $L['paymasterbilling_error_title'],
            "BILLING_ERROR" => $L['paymasterbilling_error_fail']
        ));
        $t->parse("MAIN.ERROR");

        break;
}