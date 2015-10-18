<!-- BEGIN: MAIN -->

<div class="breadcrumb">{PHP.L.nullbilling_title}</div>

<!-- BEGIN: BILLINGFORM -->
<style>
    #paypalform .payform_it:after{
        clear: both;
        content: "";
        display: table;	
    }
    
    #paypalform input{
        display: none;
    }
    
    #paypalform input:checked + li{
        border: 3px solid #025273;
    }
</style>
<div class="span12">
    <center>
        <h4>Способы оплаты</h4>
        <form id="paypalform" action="https://lmi.PayMaster.ua/" method="post">
            <ul class="payform_it">
                <label>
                    <input type="radio" name="LMI_PAYMENT_SYSTEM" value="21" />
                    <li><img src="{plaginUrl}/images/logos/card_logo.png"/></li>
                </label>
                <label class="hidden">
                    <input type="radio" name="LMI_PAYMENT_SYSTEM" value="15" />
                    <li><img src="{plaginUrl}/images/logos/nsmep_logo.png"/></li>
                </label>
                <label>
                    <input type="radio" name="LMI_PAYMENT_SYSTEM" value="20" />
                    <li><img src="{plaginUrl}/images/logos/privat24_logo.png"/></li>
                </label>
                <label>
                    <input type="radio" name="LMI_PAYMENT_SYSTEM" value="1" />
                    <li><img src="{plaginUrl}/images/logos/wm_logo.png"/></li>
                </label>
                <label>
                    <input type="radio" name="LMI_PAYMENT_SYSTEM" value="19" />
                    <li><img src="{plaginUrl}/images/logos/liqpay_logo.png"/></li>
                </label>
                <label class="hidden">
                    <input type="radio" name="LMI_PAYMENT_SYSTEM" value="23" />
                    <li><img src="{plaginUrl}/images/logos/kyivstar_logo.png"/></li>
                </label>
                <label>
                    <input type="radio" name="LMI_PAYMENT_SYSTEM" value="12" />
                    <li><img src="{plaginUrl}/images/logos/easypay_logo.png"/></li>
                </label>
                <label>
                    <input type="radio" name="LMI_PAYMENT_SYSTEM" value="6" />
                    <li><img src="{plaginUrl}/images/logos/monexy_logo.png"/></li>
                </label>
                <!-- IF {testmode} == 1 -->
                <label>
                    <input type="radio" name="LMI_PAYMENT_SYSTEM" value="18" />
                    <li>тест</li>
                </label>
                <!-- ENDIF -->
            </ul>
            <p>
                <button class="btn btn-success payform_it_btn" type="submit">Перейти на страницу оплаты</button>
            </p>
            <input type="hidden" name="LMI_MERCHANT_ID" value="{merchant_id}" />
            <input type="hidden" name="LMI_PAYMENT_AMOUNT" value="{amount}" />
            <input type="hidden" name="LMI_PAYMENT_NO" value="{pid}" />
            <input type="hidden" name="LMI_PAYMENT_DESC" value="{desc}" />
            <input type="hidden" name="LMI_SUCCESS_URL" value="{LMI_SUCCESS_URL}" />
            <input type="hidden" name="LMI_SUCCESS_METHOD" value="1" />
            <input type="hidden" name="LMI_FAIL_URL" value="{LMI_FAIL_URL}" />
            <input type="hidden" name="LMI_FAIL_METHOD" value="1" />
            <!-- IF {testmode} == 1 -->
            <input type="hidden" name="LMI_SIM_MODE" value="0" />
            <!-- ENDIF -->
        </form>
    </center>
</div>
<!-- END: BILLINGFORM -->

<!-- BEGIN: ERROR -->
<h4>{BILLING_TITLE}</h4>
{BILLING_ERROR}

<!-- IF {BILLING_REDIRECT_URL} -->
<br/>
<p class="small">{BILLING_REDIRECT_TEXT}</p>
<script>
    $(function () {
        setTimeout(function () {
            location.href = '{BILLING_REDIRECT_URL}';
        }, 5000);
    });
</script>
<!-- ENDIF -->
<!-- END: ERROR -->


<!-- END: MAIN -->