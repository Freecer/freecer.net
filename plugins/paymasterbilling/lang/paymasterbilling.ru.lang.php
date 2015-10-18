<?php
/**
 * PayMaster plugin
 *
 * @package paymasterbilling
 * @version 1.0.0
 * @author Yahor Nikitsionak
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL.');

 $L['cfg_testmode'] = array('Тестовый режим');
 $L['cfg_merchant_id'] = array('Id продавца');
 $L['cfg_email'] = array('Уведомление удачной оплаты');

$L['paymasterbilling_title'] = 'PayMaster';

$L['paymasterbilling_error_paid'] = 'Оплата прошла успешно. В ближайшее время услуга будет активирована!';
$L['paymasterbilling_error_done'] = 'Оплата прошла успешно.';
$L['paymasterbilling_error_incorrect'] = 'Некорректная подпись';
$L['paymasterbilling_error_otkaz'] = 'Отказ от оплаты.';
$L['paymasterbilling_error_title'] = 'Результат операции оплаты';
$L['paymasterbilling_error_fail'] = 'Оплата не произведена! Пожалуйста, повторите попытку. Если ошибка повторится, обратитесь к администратору сайта';

$L['paymasterbilling_redirect_text'] = 'Сейчас произойдет редирект на страницу оплаченной услуги. Если этого не произошло, перейдите по <a href="%1$s">ссылке</a>.';