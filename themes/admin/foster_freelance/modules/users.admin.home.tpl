<!-- BEGIN: MAIN -->
<div class="widget">
  <div class="widget-header">
    <h3>
      {PHP.L.Users}
    </h3>
  </div>
  <div class="widget-content">
    <ul id="main-nav" class="nav nav-tabs nav-stacked">
      <li>
        <a href="{PHP|cot_url('admin','m=config&amp;n=edit&amp;o=module&amp;p=users')}">{PHP.L.home_ql_b3_1}</a>
      </li>
      <li>
        <a href="{PHP.db_users|cot_url('admin','m=extrafields&amp;n=$this')}">{PHP.L.home_ql_b3_2}</a>
      </li>
      <li>
        <a href="{PHP|cot_url('admin','m=users')}">{PHP.L.home_ql_b3_4}</a>
      </li>
    </ul>
  </div>
</div>
<!-- END: MAIN -->