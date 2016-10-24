set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>24746644074448444822
,p_default_application_id=>1359
,p_default_owner=>'CTLENTE'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 1359 - Project SIM
--
-- Application Export:
--   Application:     1359
--   Name:            Project SIM
--   Date and Time:   18:30 Thursday April 28, 2016
--   Exported By:     CTLENTE@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.3.00.03
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                     25
--     Items:                  424
--     Processes:               48
--     Regions:                 47
--     Buttons:                 37
--   Shared Components:
--     Logic:
--       Web Services:          13
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,1359)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'CTLENTE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Project SIM')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_1359')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'BDF31D1EE69E3CC2C2325B2ACEEB15A776B2881EA6571F4C15ED6CDEEA018C66'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(31526888456430974337)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Project SIM'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428182937'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(31526845521097974286)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31526888620822974339)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31539164561559292101)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Person'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,11,12,15,16,17,18'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31679407028420659771)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Previous Employee'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31539164561559292101)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31681312031216821305)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Employee'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31539164561559292101)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31682128619173895839)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Manager'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31539164561559292101)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31685128272471548201)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'President'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31539164561559292101)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31685216790137559395)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Interim Manager'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31539164561559292101)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31685389458554571365)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Project Employee'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31539164561559292101)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31686034823964960441)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Project'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19,20,21'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31689859291298630364)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Current Project'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31686034823964960441)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31690643298173644668)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Previous Project'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(31686034823964960441)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31691766853582043879)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Department'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(31526888174337974333)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31526888337886974336)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(31526845253846974286)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(31526845386502974286)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(31526845418639974286)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(31526888584216974338)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(31526888978868974340)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31526845671088974286)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526845734623974288)
,p_page_template_id=>wwv_flow_api.id(31526845671088974286)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526845872270974288)
,p_page_template_id=>wwv_flow_api.id(31526845671088974286)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526845906995974288)
,p_page_template_id=>wwv_flow_api.id(31526845671088974286)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526846088740974288)
,p_page_template_id=>wwv_flow_api.id(31526845671088974286)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526846196669974288)
,p_page_template_id=>wwv_flow_api.id(31526845671088974286)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526846207594974288)
,p_page_template_id=>wwv_flow_api.id(31526845671088974286)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526846379375974288)
,p_page_template_id=>wwv_flow_api.id(31526845671088974286)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526846411874974288)
,p_page_template_id=>wwv_flow_api.id(31526845671088974286)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31526846535771974288)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526846615298974289)
,p_page_template_id=>wwv_flow_api.id(31526846535771974288)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526846703538974289)
,p_page_template_id=>wwv_flow_api.id(31526846535771974288)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526846859720974289)
,p_page_template_id=>wwv_flow_api.id(31526846535771974288)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526846961230974289)
,p_page_template_id=>wwv_flow_api.id(31526846535771974288)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526847091358974289)
,p_page_template_id=>wwv_flow_api.id(31526846535771974288)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526847130993974289)
,p_page_template_id=>wwv_flow_api.id(31526846535771974288)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526847233747974289)
,p_page_template_id=>wwv_flow_api.id(31526846535771974288)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526847363583974289)
,p_page_template_id=>wwv_flow_api.id(31526846535771974288)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526847455921974289)
,p_page_template_id=>wwv_flow_api.id(31526846535771974288)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31526847500368974289)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526847651956974289)
,p_page_template_id=>wwv_flow_api.id(31526847500368974289)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526847750511974289)
,p_page_template_id=>wwv_flow_api.id(31526847500368974289)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31526847879999974289)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526847927603974289)
,p_page_template_id=>wwv_flow_api.id(31526847879999974289)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526848045880974289)
,p_page_template_id=>wwv_flow_api.id(31526847879999974289)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526848152441974290)
,p_page_template_id=>wwv_flow_api.id(31526847879999974289)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526848288195974290)
,p_page_template_id=>wwv_flow_api.id(31526847879999974289)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526848373199974290)
,p_page_template_id=>wwv_flow_api.id(31526847879999974289)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526848483518974290)
,p_page_template_id=>wwv_flow_api.id(31526847879999974289)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526848531965974290)
,p_page_template_id=>wwv_flow_api.id(31526847879999974289)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526848677274974290)
,p_page_template_id=>wwv_flow_api.id(31526847879999974289)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526848701025974290)
,p_page_template_id=>wwv_flow_api.id(31526847879999974289)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31526848860882974290)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526848901094974290)
,p_page_template_id=>wwv_flow_api.id(31526848860882974290)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526849003080974290)
,p_page_template_id=>wwv_flow_api.id(31526848860882974290)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526849109094974290)
,p_page_template_id=>wwv_flow_api.id(31526848860882974290)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526849292292974290)
,p_page_template_id=>wwv_flow_api.id(31526848860882974290)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526849357734974290)
,p_page_template_id=>wwv_flow_api.id(31526848860882974290)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526849407375974290)
,p_page_template_id=>wwv_flow_api.id(31526848860882974290)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526849547769974290)
,p_page_template_id=>wwv_flow_api.id(31526848860882974290)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31526849665202974290)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526849753186974290)
,p_page_template_id=>wwv_flow_api.id(31526849665202974290)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526849809593974290)
,p_page_template_id=>wwv_flow_api.id(31526849665202974290)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526849980171974290)
,p_page_template_id=>wwv_flow_api.id(31526849665202974290)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31526850017107974290)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526850115171974291)
,p_page_template_id=>wwv_flow_api.id(31526850017107974290)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526850279592974291)
,p_page_template_id=>wwv_flow_api.id(31526850017107974290)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526850394820974291)
,p_page_template_id=>wwv_flow_api.id(31526850017107974290)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526850428812974291)
,p_page_template_id=>wwv_flow_api.id(31526850017107974290)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526850561697974291)
,p_page_template_id=>wwv_flow_api.id(31526850017107974290)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526850642224974291)
,p_page_template_id=>wwv_flow_api.id(31526850017107974290)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526850787044974291)
,p_page_template_id=>wwv_flow_api.id(31526850017107974290)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526850849980974291)
,p_page_template_id=>wwv_flow_api.id(31526850017107974290)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31526850984018974291)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526851025554974291)
,p_page_template_id=>wwv_flow_api.id(31526850984018974291)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526851123142974291)
,p_page_template_id=>wwv_flow_api.id(31526850984018974291)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526851210273974291)
,p_page_template_id=>wwv_flow_api.id(31526850984018974291)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526851352931974291)
,p_page_template_id=>wwv_flow_api.id(31526850984018974291)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526851470294974291)
,p_page_template_id=>wwv_flow_api.id(31526850984018974291)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526851579173974291)
,p_page_template_id=>wwv_flow_api.id(31526850984018974291)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526851617981974291)
,p_page_template_id=>wwv_flow_api.id(31526850984018974291)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(31526851762433974291)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526851807765974292)
,p_page_template_id=>wwv_flow_api.id(31526851762433974291)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526851916564974292)
,p_page_template_id=>wwv_flow_api.id(31526851762433974291)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526852042418974292)
,p_page_template_id=>wwv_flow_api.id(31526851762433974291)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(31526882727137974322)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(31526883019060974323)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(31526883143380974323)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31526852145669974292)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526852208331974294)
,p_plug_template_id=>wwv_flow_api.id(31526852145669974292)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31526853620748974296)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31526853760938974296)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526853844050974296)
,p_plug_template_id=>wwv_flow_api.id(31526853760938974296)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526853905028974296)
,p_plug_template_id=>wwv_flow_api.id(31526853760938974296)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31526854661170974298)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526854749493974299)
,p_plug_template_id=>wwv_flow_api.id(31526854661170974298)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526854854655974299)
,p_plug_template_id=>wwv_flow_api.id(31526854661170974298)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31526858048048974301)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526858134335974301)
,p_plug_template_id=>wwv_flow_api.id(31526858048048974301)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526858213931974301)
,p_plug_template_id=>wwv_flow_api.id(31526858048048974301)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31526860169743974302)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526860286658974302)
,p_plug_template_id=>wwv_flow_api.id(31526860169743974302)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31526860399793974302)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526860483909974302)
,p_plug_template_id=>wwv_flow_api.id(31526860399793974302)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31526861266785974303)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31526861587802974303)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526861696756974303)
,p_plug_template_id=>wwv_flow_api.id(31526861587802974303)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31526861717162974303)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526861866210974303)
,p_plug_template_id=>wwv_flow_api.id(31526861717162974303)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526861933832974303)
,p_plug_template_id=>wwv_flow_api.id(31526861717162974303)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31526863897654974304)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526863950965974305)
,p_plug_template_id=>wwv_flow_api.id(31526863897654974304)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526864019161974305)
,p_plug_template_id=>wwv_flow_api.id(31526863897654974304)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31526865001479974305)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(31526865571914974306)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(31526865636009974306)
,p_plug_template_id=>wwv_flow_api.id(31526865571914974306)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31526873911139974314)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31526875652351974316)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31526877774350974317)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31526878534125974317)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31526879492199974318)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31526879972552974318)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31526880018166974319)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31526880172949974319)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31526880204180974319)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31526881173071974320)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(31526881602546974320)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31526866104682974306)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31526866248824974307)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31526867963055974308)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31526870081916974310)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31526870489686974310)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31526870555496974311)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(31526870555496974311)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31526871818483974312)
,p_row_template_name=>'Timeline'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31526872033036974312)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31526873049947974313)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(31526882134691974321)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(31526882247181974321)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(31526882359903974321)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(31526882483444974321)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(31526882505816974322)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(31526883593800974323)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(31526883740653974325)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(31526883668368974324)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(31526884138938974328)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(31526850984018974291)
,p_default_dialog_template=>wwv_flow_api.id(31526849665202974290)
,p_error_template=>wwv_flow_api.id(31526847500368974289)
,p_printer_friendly_template=>wwv_flow_api.id(31526850984018974291)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(31526847500368974289)
,p_default_button_template=>wwv_flow_api.id(31526883019060974323)
,p_default_region_template=>wwv_flow_api.id(31526861717162974303)
,p_default_chart_template=>wwv_flow_api.id(31526861717162974303)
,p_default_form_template=>wwv_flow_api.id(31526861717162974303)
,p_default_reportr_template=>wwv_flow_api.id(31526861717162974303)
,p_default_tabform_template=>wwv_flow_api.id(31526861717162974303)
,p_default_wizard_template=>wwv_flow_api.id(31526861717162974303)
,p_default_menur_template=>wwv_flow_api.id(31526865001479974305)
,p_default_listr_template=>wwv_flow_api.id(31526861717162974303)
,p_default_irr_template=>wwv_flow_api.id(31526861266785974303)
,p_default_report_template=>wwv_flow_api.id(31526870555496974311)
,p_default_label_template=>wwv_flow_api.id(31526882247181974321)
,p_default_menu_template=>wwv_flow_api.id(31526883593800974323)
,p_default_calendar_template=>wwv_flow_api.id(31526883668368974324)
,p_default_list_template=>wwv_flow_api.id(31526877774350974317)
,p_default_nav_list_template=>wwv_flow_api.id(31526881173071974320)
,p_default_top_nav_list_temp=>wwv_flow_api.id(31526881173071974320)
,p_default_side_nav_list_temp=>wwv_flow_api.id(31526880172949974319)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(31526853760938974296)
,p_default_dialogr_template=>wwv_flow_api.id(31526853620748974296)
,p_default_option_label=>wwv_flow_api.id(31526882247181974321)
,p_default_required_label=>wwv_flow_api.id(31526882483444974321)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(31526880018166974319)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(31526883842542974326)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(31526883945288974326)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(31526884017553974326)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526852477883974295)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526852634766974295)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526852800016974295)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526854009088974297)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526854293623974297)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526854997801974299)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526855360654974299)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526855924209974299)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526856563677974300)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526856735426974300)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526857648925974300)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526859284474974301)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526860672283974303)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526864143758974305)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526864305232974305)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526864799753974305)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526865139684974305)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526865793487974306)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526866306622974307)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526866514578974307)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526868147587974308)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526868815219974309)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526869106118974309)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526869885188974310)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526870189364974310)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526870645695974311)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526870994371974311)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526871199127974311)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526872190362974312)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526874077173974315)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526874870195974315)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526875838098974316)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526876527564974316)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526876846961974316)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526877591768974317)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526878221621974317)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526880638797974320)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526881718296974320)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526883290455974323)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526884292864974330)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526884465876974330)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526884613663974330)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526884864357974330)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526885041348974330)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526885401661974330)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526886157901974331)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526886505393974332)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526886746242974332)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526886927199974332)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526887163276974332)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526887461728974332)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(31526887744515974333)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526852355198974294)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31526852145669974292)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526852541516974295)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526852145669974292)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(31526852477883974295)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526852787298974295)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526852145669974292)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(31526852634766974295)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526852986153974295)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526852145669974292)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(31526852800016974295)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526853029274974296)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31526852145669974292)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(31526852477883974295)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526853178097974296)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31526852145669974292)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(31526852634766974295)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526853252278974296)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31526852145669974292)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(31526852477883974295)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526853308502974296)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526852145669974292)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(31526852634766974295)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526853451077974296)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526852145669974292)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(31526852477883974295)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526853576889974296)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526852145669974292)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(31526852800016974295)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526854119294974297)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31526853760938974296)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(31526854009088974297)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526854375087974297)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(31526853760938974296)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(31526854293623974297)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526854459956974298)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(31526853760938974296)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(31526854009088974297)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526854504299974298)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(31526853760938974296)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(31526854293623974297)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526855044193974299)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(31526854997801974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526855114604974299)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(31526854997801974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526855266498974299)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(31526854997801974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526855442448974299)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(31526855360654974299)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526855537224974299)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(31526855360654974299)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526855692308974299)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(31526855360654974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526855730218974299)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(31526854997801974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526855803630974299)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(31526855360654974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526856069183974299)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(31526855924209974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526856133139974300)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(31526855924209974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526856296866974300)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(31526855924209974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526856350195974300)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(31526855924209974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526856491224974300)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(31526855924209974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526856629495974300)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(31526856563677974300)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526856807374974300)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(31526856735426974300)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526856901763974300)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(31526856563677974300)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526857039839974300)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526857102892974300)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(31526854009088974297)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526857285528974300)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526857311210974300)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(31526856735426974300)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526857418672974300)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526857521107974300)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526857746224974300)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(31526857648925974300)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526857805517974300)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(31526857648925974300)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526857946438974301)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526854661170974298)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(31526854009088974297)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526858336538974301)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526858048048974301)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(31526855360654974299)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526858490476974301)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526858048048974301)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(31526855360654974299)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526858591155974301)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31526858048048974301)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(31526855360654974299)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526858636216974301)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31526858048048974301)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(31526855360654974299)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526858772504974301)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526858048048974301)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(31526855924209974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526858871027974301)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526858048048974301)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(31526855924209974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526858958697974301)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31526858048048974301)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(31526855924209974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526859025915974301)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31526858048048974301)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(31526855924209974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526859100580974301)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(31526858048048974301)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(31526855924209974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526859352052974301)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526858048048974301)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(31526859284474974301)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526859401218974301)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526858048048974301)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(31526859284474974301)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526859583833974302)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526858048048974301)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(31526856735426974300)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526859627023974302)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526858048048974301)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526859786760974302)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526858048048974301)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(31526854009088974297)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526859801487974302)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31526858048048974301)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(31526854009088974297)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526859926465974302)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526858048048974301)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(31526856735426974300)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526860059707974302)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526858048048974301)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(31526854009088974297)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526860589665974302)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526860399793974302)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526860719328974303)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31526860399793974302)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(31526860672283974303)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526860839000974303)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526860399793974302)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(31526860672283974303)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526860961521974303)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526860399793974302)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526861095745974303)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31526860399793974302)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526861116565974303)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526860399793974302)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(31526860672283974303)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526861363808974303)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526861266785974303)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526861412420974303)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526861266785974303)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526862035213974303)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526861717162974303)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(31526855360654974299)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526862178975974304)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526861717162974303)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(31526855360654974299)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526862250200974304)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31526861717162974303)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(31526855360654974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526862305940974304)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31526861717162974303)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(31526855360654974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526862416285974304)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526861717162974303)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(31526855924209974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526862594308974304)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526861717162974303)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(31526855924209974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526862647018974304)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31526861717162974303)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(31526855924209974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526862716082974304)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(31526861717162974303)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(31526855924209974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526862821089974304)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(31526861717162974303)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(31526855924209974299)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526862975635974304)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526861717162974303)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(31526856563677974300)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526863093550974304)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526861717162974303)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(31526856735426974300)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526863129845974304)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526861717162974303)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(31526856563677974300)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526863244046974304)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526861717162974303)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526863316198974304)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526861717162974303)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(31526854009088974297)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526863440526974304)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(31526861717162974303)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(31526854009088974297)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526863588121974304)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526861717162974303)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(31526856735426974300)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526863685129974304)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526861717162974303)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526863786639974304)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526861717162974303)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(31526854009088974297)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526864218176974305)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526863897654974304)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(31526864143758974305)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526864461617974305)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526863897654974304)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(31526864305232974305)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526864583431974305)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526863897654974304)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526864655830974305)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526863897654974304)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(31526864305232974305)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526864894872974305)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526863897654974304)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(31526864799753974305)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526864944699974305)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526863897654974304)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(31526864799753974305)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526865232539974305)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31526865001479974305)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(31526865139684974305)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526865300781974305)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31526865001479974305)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526865454429974306)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(31526865001479974305)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(31526865139684974305)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526865811852974306)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(31526865571914974306)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(31526865793487974306)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526865942693974306)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526865571914974306)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(31526865793487974306)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526866090798974306)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(31526865571914974306)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526866427334974307)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31526866248824974307)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(31526866306622974307)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526866630887974307)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31526866248824974307)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(31526866514578974307)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526866757106974307)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31526866248824974307)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(31526866306622974307)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526866812579974307)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31526866248824974307)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(31526866514578974307)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526866927146974307)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31526866248824974307)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(31526866306622974307)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526867090006974307)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31526866248824974307)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(31526866514578974307)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526867166766974307)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31526866248824974307)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(31526866514578974307)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526867258915974308)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31526866248824974307)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(31526866306622974307)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526867392740974308)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31526866248824974307)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(31526866306622974307)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526867410489974308)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(31526866248824974307)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(31526866514578974307)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526867522844974308)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(31526866248824974307)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(31526866514578974307)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526867605828974308)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(31526866248824974307)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(31526866514578974307)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526867717521974308)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31526866248824974307)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526867804321974308)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31526866248824974307)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(31526866514578974307)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526868027656974308)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(31526867963055974308)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(31526866514578974307)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526868248366974308)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31526867963055974308)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(31526868147587974308)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526868389228974308)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31526867963055974308)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(31526866514578974307)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526868492808974308)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31526867963055974308)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(31526868147587974308)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526868559401974308)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31526867963055974308)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(31526866514578974307)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526868674348974308)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31526867963055974308)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(31526868147587974308)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526868770561974309)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31526867963055974308)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(31526866514578974307)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526868967362974309)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31526867963055974308)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(31526868815219974309)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526869020028974309)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31526867963055974308)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(31526868815219974309)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526869269465974309)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31526867963055974308)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(31526869106118974309)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526869308487974309)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31526867963055974308)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(31526869106118974309)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526869469601974309)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31526867963055974308)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(31526868815219974309)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526869593174974309)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(31526867963055974308)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(31526866514578974307)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526869654337974309)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31526867963055974308)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(31526868147587974308)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526869742744974309)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(31526867963055974308)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(31526866514578974307)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526869994892974310)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31526867963055974308)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(31526869885188974310)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526870212163974310)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31526870081916974310)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(31526870189364974310)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526870356220974310)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31526870081916974310)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(31526870189364974310)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526870795665974311)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31526870555496974311)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(31526870645695974311)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526870873563974311)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31526870555496974311)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(31526870645695974311)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526871005004974311)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31526870555496974311)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(31526870994371974311)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526871270212974312)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31526870555496974311)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(31526871199127974311)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526871338853974312)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31526870555496974311)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(31526871199127974311)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526871446699974312)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31526870555496974311)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(31526871199127974311)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526871567531974312)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31526870555496974311)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(31526870994371974311)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526871683633974312)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31526870555496974311)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526871744413974312)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31526870555496974311)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(31526871199127974311)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526871900092974312)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(31526871818483974312)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(31526868815219974309)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526872200942974312)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31526872033036974312)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(31526872190362974312)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526872360024974312)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31526872033036974312)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(31526872190362974312)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526872459619974312)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31526872033036974312)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(31526872190362974312)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526872598276974313)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31526872033036974312)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(31526866514578974307)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526872680255974313)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31526872033036974312)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(31526866514578974307)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526872796331974313)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(31526872033036974312)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(31526872190362974312)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526872840917974313)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31526872033036974312)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(31526872190362974312)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526872935975974313)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31526872033036974312)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(31526872190362974312)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526873198961974313)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(31526873049947974313)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(31526872190362974312)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526873287244974313)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31526873049947974313)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(31526872190362974312)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526873344906974313)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31526873049947974313)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(31526872190362974312)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526873477104974313)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(31526873049947974313)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(31526866514578974307)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526873589536974313)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(31526873049947974313)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(31526866514578974307)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526873696216974313)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(31526873049947974313)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(31526872190362974312)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526873799068974313)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(31526873049947974313)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(31526872190362974312)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526873860480974313)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(31526873049947974313)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(31526872190362974312)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526874116169974315)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31526873911139974314)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526874244979974315)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31526873911139974314)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526874356626974315)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(31526873911139974314)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526874463601974315)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(31526873911139974314)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526874564140974315)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(31526873911139974314)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526874698831974315)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(31526873911139974314)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526874723085974315)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(31526873911139974314)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526874911409974315)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31526873911139974314)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(31526874870195974315)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526875076298974315)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31526873911139974314)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(31526874870195974315)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526875107390974315)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31526873911139974314)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526875253640974315)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31526873911139974314)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(31526874870195974315)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526875349511974315)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31526873911139974314)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526875407821974315)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(31526873911139974314)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(31526874870195974315)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526875579576974316)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(31526873911139974314)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(31526874870195974315)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526875726162974316)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31526875652351974316)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526875955044974316)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31526875652351974316)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(31526875838098974316)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526876037990974316)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31526875652351974316)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526876147742974316)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31526875652351974316)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(31526875838098974316)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526876294809974316)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31526875652351974316)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526876340720974316)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31526875652351974316)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(31526875838098974316)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526876498797974316)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(31526875652351974316)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526876645440974316)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31526875652351974316)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(31526876527564974316)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526876786205974316)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31526875652351974316)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(31526876527564974316)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526876935143974316)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31526875652351974316)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(31526876846961974316)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526877042604974316)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31526875652351974316)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(31526876846961974316)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526877194536974316)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31526875652351974316)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(31526876527564974316)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526877253943974317)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(31526875652351974316)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526877396386974317)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(31526875652351974316)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(31526875838098974316)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526877432245974317)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(31526875652351974316)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526877649481974317)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31526875652351974316)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(31526877591768974317)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526877845727974317)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31526877774350974317)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(31526876527564974316)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526877955070974317)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31526877774350974317)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526878025771974317)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31526877774350974317)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526878159455974317)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31526877774350974317)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526878325564974317)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31526877774350974317)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(31526878221621974317)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526878447046974317)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31526877774350974317)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(31526878221621974317)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526878687616974317)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31526878534125974317)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526878799721974318)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31526878534125974317)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526878814336974318)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31526878534125974317)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526878942923974318)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(31526878534125974317)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526879077346974318)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31526878534125974317)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526879166072974318)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31526878534125974317)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526879262102974318)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31526878534125974317)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526879347717974318)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(31526878534125974317)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526879562127974318)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(31526879492199974318)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526879690888974318)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31526879492199974318)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526879728213974318)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31526879492199974318)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526879802354974318)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31526879492199974318)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526880378962974319)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31526880204180974319)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(31526876846961974316)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526880492990974319)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(31526880204180974319)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(31526874077173974315)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526880519169974320)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31526880204180974319)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(31526876846961974316)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526880725138974320)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31526880204180974319)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(31526880638797974320)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526880831482974320)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31526880204180974319)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(31526876527564974316)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526880971615974320)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31526880204180974319)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(31526876527564974316)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526881065689974320)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(31526880204180974319)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(31526880638797974320)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526881283955974320)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(31526881173071974320)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526881339450974320)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(31526881173071974320)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526881428735974320)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(31526881173071974320)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526881532067974320)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(31526881173071974320)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526881809601974320)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(31526881602546974320)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(31526881718296974320)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526881923781974320)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(31526881602546974320)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(31526881718296974320)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526882027872974321)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(31526881602546974320)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(31526881718296974320)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526883353449974323)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(31526883143380974323)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(31526883290455974323)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526883456565974323)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(31526883143380974323)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(31526883290455974323)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526884321243974330)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(31526884292864974330)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526884576514974330)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(31526884465876974330)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526884719203974330)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(31526884613663974330)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526884908934974330)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(31526884864357974330)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526885117041974330)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(31526885041348974330)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526885275749974330)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(31526884465876974330)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526885372646974330)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(31526884613663974330)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526885570792974331)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(31526885401661974330)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526885617637974331)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(31526885401661974330)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526885791880974331)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(31526885401661974330)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526885824179974331)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(31526884292864974330)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526885935041974331)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(31526885041348974330)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526886083965974331)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(31526884864357974330)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526886258884974331)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(31526886157901974331)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526886391799974331)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(31526884292864974330)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526886466040974331)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(31526884292864974330)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526886659157974332)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(31526886505393974332)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526886899340974332)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(31526886746242974332)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526887031654974332)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(31526886927199974332)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526887204419974332)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(31526887163276974332)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526887372059974332)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(31526887163276974332)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526887505909974332)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(31526887461728974332)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526887613080974333)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(31526886746242974332)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526887849522974333)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(31526887744515974333)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526887968748974333)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(31526888039829974333)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(31526887744515974333)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(31526888456430974337)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(31526888211861974334)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(31526845521097974286)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(31526880172949974319)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(31526888174337974333)
,p_nav_bar_list_template_id=>wwv_flow_api.id(31526880018166974319)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20160426004015'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31526889026047974342)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31526865001479974305)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(31526888584216974338)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(31526883593800974323)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Person'
,p_page_mode=>'NORMAL'
,p_step_title=>'Person'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428182937'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31539164946317292102)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31539200437916292121)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31526861717162974303)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P2_PERSON_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31526870555496974311)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31539201172953292124)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31680702331649386556)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31526861266785974303)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  ',
'jt1.first_name first_name,  ',
'jt2.last_name last_name,  ',
'jt3.person_id person_id,  ',
'jt4.home_address home_address,  ',
'jt5.zipcode zipcode,  ',
'jt6.home_phone home_phone,  ',
'jt7.us_citizen us_citizen',
'from apex_collections t, ',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1, ',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2, ',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3, ',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4, ',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5, ',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6, ',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7',
'where t.collection_name = ''P2_PERSON_JSON'' and  ',
'jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31680702469661386556)
,p_name=>'Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'CTLENTE@GMAIL.COM'
,p_internal_uid=>31680702469661386556
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31680702708338386567)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31680703136735386568)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31680703538046386569)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31680703916736386569)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31680704323021386569)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31680704750642386570)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31680705182883386570)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31680741746681392424)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316807418'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31539165347147292102)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30889176833978596838)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_button_name=>'PERSON'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30889176985416596839)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_button_name=>'FAMILY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Create Family'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31539165766532292103)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31539166508945292106)
,p_name=>'P2_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31539167306836292107)
,p_name=>'P2_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31539188100869292109)
,p_name=>'P2_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31539188942413292110)
,p_name=>'P2_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31539189736978292110)
,p_name=>'P2_USCITIZEN'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31539190561584292111)
,p_name=>'P2_MODEL'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31539191390222292111)
,p_name=>'P2_HOMEPHONE'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31539192118374292112)
,p_name=>'P2_PERSONID'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31539192957690292113)
,p_name=>'P2_FIRSTNAME'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31539193731634292115)
,p_name=>'P2_LASTNAME'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31539194524568292115)
,p_name=>'P2_HOMEADDRESS'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31539195395146292116)
,p_name=>'P2_ZIPCODE'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31539196183184292117)
,p_name=>'P2_RETURNDIMENSIONS'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31539196967191292117)
,p_name=>'P2_RETURNFOR'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31539197740170292118)
,p_name=>'P2_SPOUSE'
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31539198544887292119)
,p_name=>'P2_QUERY'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_item_default=>'''from person retrieve *;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31539199366747292120)
,p_name=>'P2_QUERY2'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_api.id(31539164946317292102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31539166103686292104)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31527385488295993707:31527385644191993708'
,p_attribute_01=>wwv_flow_api.id(31527385644191993708)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P2_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Form on Person'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on Person'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427220414'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31540685946580411106)
,p_plug_name=>'Form on Person'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31540686398907411107)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31540685946580411106)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31540686790683411107)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31540686398907411107)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31540687581242411109)
,p_name=>'P10_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31540685946580411106)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31540688311592411111)
,p_name=>'P10_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31540685946580411106)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31540689165055411111)
,p_name=>'P10_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31540685946580411106)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31540689970182411112)
,p_name=>'P10_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31540685946580411106)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31540690797221411113)
,p_name=>'P10_USCITIZEN'
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_api.id(31540685946580411106)
,p_item_default=>'"true"'
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31540691539768411113)
,p_name=>'P10_MODEL'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31540685946580411106)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31540692329989411114)
,p_name=>'P10_HOMEPHONE'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_api.id(31540685946580411106)
,p_item_default=>'0'
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31540693198643411115)
,p_name=>'P10_PERSONID'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_api.id(31540685946580411106)
,p_item_default=>'0'
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31540693976119411115)
,p_name=>'P10_FIRSTNAME'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_api.id(31540685946580411106)
,p_item_default=>'""'
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31540694785593411116)
,p_name=>'P10_LASTNAME'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_api.id(31540685946580411106)
,p_item_default=>'""'
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31540695564097411117)
,p_name=>'P10_HOMEADDRESS'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_api.id(31540685946580411106)
,p_item_default=>'""'
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31540696378537411118)
,p_name=>'P10_ZIPCODE'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_api.id(31540685946580411106)
,p_item_default=>'0'
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31540697178188411118)
,p_name=>'P10_RETURNDIMENSIONS'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_api.id(31540685946580411106)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31540697960918411119)
,p_name=>'P10_RETURNFOR'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_api.id(31540685946580411106)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31540698704593411120)
,p_name=>'P10_SPOUSE'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_api.id(31540685946580411106)
,p_item_default=>'0'
,p_prompt=>'Spouse'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31540699527731411120)
,p_name=>'P10_QUERY'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_api.id(31540685946580411106)
,p_item_default=>'''insert person (person-id := ''personid'', first-name := ''firstname'', last-name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home-phone := ''homephone'', us-citizen := ''uscitizen'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31540700353269411121)
,p_name=>'P10_QUERY2'
,p_item_sequence=>154
,p_item_plug_id=>wwv_flow_api.id(31540685946580411106)
,p_item_default=>'''MODIFY LIMIT = 1 Person ( spouse := Person WITH (person-id = ''personid'') ) WHERE person-id = ''spouse'';'''
,p_prompt=>'Query2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31540687119845411108)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31527385488295993707:31527385644191993708'
,p_attribute_01=>wwv_flow_api.id(31527385644191993708)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P10_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31540686398907411107)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31678743708427240118)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request cp'
,p_process_sql_clob=>'31527385488295993707:31527385644191993708'
,p_attribute_01=>wwv_flow_api.id(31527385644191993708)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P10_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31540686398907411107)
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Previous Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Previous Employee'
,p_step_sub_title=>'Previous Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428014155'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31679407630669659772)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31679485396660659790)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31526861717162974303)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P11_PERSON_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31526870555496974311)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31679485731841659791)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31681041265223795274)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31526861266785974303)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  ',
'jt1.first_name first_name,  ',
'jt2.last_name last_name,  ',
'jt3.person_id person_id,  ',
'jt4.home_address home_address,  ',
'jt5.zipcode zipcode,  ',
'jt6.home_phone home_phone,  ',
'jt7.us_citizen us_citizen,',
'jt8.isfired isfired,',
'jt9.salary salary',
'from apex_collections t, ',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1, ',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2, ',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3, ',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4, ',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5, ',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6, ',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.isfired[*]'' COLUMNS rid for ordinality, isfired varchar path ''$'') jt8, ',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9',
'where t.collection_name = ''P11_PERSON_JSON'' and  ',
'jt1.rid = jt2.rid and jt1.rid = jt3.rid and jt1.rid = jt4.rid and jt1.rid = jt5.rid and jt1.rid = jt6.rid and jt1.rid = jt7.rid and jt1.rid = jt8.rid and jt1.rid = jt9.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31681041339957795274)
,p_name=>'Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'CTLENTE@GMAIL.COM'
,p_internal_uid=>31681041339957795274
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681041700050795289)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681042052120795291)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681042411868795292)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681042877650795292)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681043266227795296)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681043674453795296)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681044008600795297)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681044467924795297)
,p_db_column_name=>'ISFIRED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Isfired'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681044855349795298)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31681046273911795877)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316810463'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:ISFIRED:SALARY'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31679478070952659774)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30889177010788596840)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31679493525648659800)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31679478444520659777)
,p_name=>'P11_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31679478850998659779)
,p_name=>'P11_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31679479275255659780)
,p_name=>'P11_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31679479600171659780)
,p_name=>'P11_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31679480047680659781)
,p_name=>'P11_MODEL'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31679480427655659781)
,p_name=>'P11_RETURNDIMENSIONS'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31679480862136659782)
,p_name=>'P11_RETURNFOR'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31679481287378659782)
,p_name=>'P11_PERSONID'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31679481640407659782)
,p_name=>'P11_FIRSTNAME'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31679482034643659783)
,p_name=>'P11_LASTNAME'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31679482414812659783)
,p_name=>'P11_HOMEADDRESS'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31679482891512659784)
,p_name=>'P11_ZIPCODE'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31679483272365659784)
,p_name=>'P11_HOMEPHONE'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31679483614690659785)
,p_name=>'P11_USCITIZEN'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31679484009818659785)
,p_name=>'P11_SPOUSE'
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31679484434512659785)
,p_name=>'P11_QUERY'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_item_default=>'''from previous-employee retrieve *;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31679484922993659788)
,p_name=>'P11_QUERY2'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_api.id(31679407630669659772)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31679486282892659793)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31527385488295993707:31527385644191993708'
,p_attribute_01=>wwv_flow_api.id(31527385644191993708)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P11_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Employee'
,p_step_sub_title=>'Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428014320'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31681312627260821306)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31681330205144821318)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31526861717162974303)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P12_PERSON_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31526870555496974311)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31681330660477821319)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31681331031782821320)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31526861266785974303)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  ',
'jt1.first_name first_name,  ',
'jt2.last_name last_name,  ',
'jt3.person_id person_id,  ',
'jt4.home_address home_address,  ',
'jt5.zipcode zipcode,  ',
'jt6.home_phone home_phone,  ',
'jt7.us_citizen us_citizen,',
'jt8.employee_id employee_id,',
'jt9.salary salary,',
'jt10.salary_exception salary_exception',
'from apex_collections t, ',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1, ',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2, ',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3, ',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4, ',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5, ',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6, ',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8, ',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10',
'where t.collection_name = ''P12_PERSON_JSON'' and  ',
'jt1.rid = jt2.rid and jt1.rid = jt3.rid and jt1.rid = jt4.rid and jt1.rid = jt5.rid and jt1.rid = jt6.rid and jt1.rid = jt7.rid and jt1.rid = jt8.rid and jt1.rid = jt9.rid and jt1.rid = jt10.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31681331484773821322)
,p_name=>'Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'CTLENTE@GMAIL.COM'
,p_internal_uid=>31681331484773821322
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681331586435821323)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681331968507821324)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681332368280821324)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681332782794821324)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681333175151821325)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681333557112821325)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681333960171821326)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681334762742821327)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681914791496881052)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Employee Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31681915469519881053)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31681335176144821328)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316813352'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:SALARY:EMPLOYEE_ID:SALARY_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31681313056189821307)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30889177177319596841)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31681342915040821339)
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681313432073821310)
,p_name=>'P12_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681313829503821312)
,p_name=>'P12_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681314220484821312)
,p_name=>'P12_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681314615414821313)
,p_name=>'P12_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681315013576821313)
,p_name=>'P12_MODEL'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681315419801821313)
,p_name=>'P12_RETURNDIMENSIONS'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681315885617821314)
,p_name=>'P12_RETURNFOR'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681316258075821315)
,p_name=>'P12_PERSONID'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681316687542821315)
,p_name=>'P12_FIRSTNAME'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681317012282821315)
,p_name=>'P12_LASTNAME'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681317406057821316)
,p_name=>'P12_HOMEADDRESS'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681317813684821316)
,p_name=>'P12_ZIPCODE'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681328250596821317)
,p_name=>'P12_HOMEPHONE'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681328630546821317)
,p_name=>'P12_USCITIZEN'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681329015886821317)
,p_name=>'P12_SPOUSE'
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681329467751821318)
,p_name=>'P12_QUERY'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_item_default=>'''from employee retrieve *;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31681329830298821318)
,p_name=>'P12_QUERY2'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_api.id(31681312627260821306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31681335617709821330)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31527385488295993707:31527385644191993708'
,p_attribute_01=>wwv_flow_api.id(31527385644191993708)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P12_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Manager'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manager'
,p_step_sub_title=>'Manager'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428014354'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31682129236471895841)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31682136805632895854)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31526861717162974303)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P15_PERSON_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31526870555496974311)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31682137229668895855)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31682137617047895856)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31526861266785974303)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  ',
'jt1.first_name first_name,  ',
'jt2.last_name last_name,  ',
'jt3.person_id person_id,  ',
'jt4.home_address home_address,  ',
'jt5.zipcode zipcode,  ',
'jt6.home_phone home_phone,  ',
'jt7.us_citizen us_citizen,',
'jt8.employee_id employee_id,',
'jt9.salary salary,',
'jt10.salary_exception salary_exception,',
'jt11.bonus bonus',
'from apex_collections t, ',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1, ',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2, ',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3, ',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4, ',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5, ',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6, ',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8, ',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10,',
'json_table(t.clob001, ''$.bonus[*]'' COLUMNS rid for ordinality, bonus varchar path ''$'') jt11',
'where t.collection_name = ''P15_PERSON_JSON'' and  ',
'jt1.rid = jt2.rid and jt1.rid = jt3.rid and jt1.rid = jt4.rid and jt1.rid = jt5.rid and jt1.rid = jt6.rid and jt1.rid = jt7.rid and jt1.rid = jt8.rid and jt1.rid = jt9.rid and jt1.rid = jt10.rid and jt1.rid = jt11.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31682138013496895857)
,p_name=>'Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'CTLENTE@GMAIL.COM'
,p_internal_uid=>31682138013496895857
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31682138484457895859)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31682139080473895860)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31682139444230895861)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31682139877106895861)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31682140268359895862)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31682140695827895862)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31682141006607895863)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31682141499918895863)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31682141891530895863)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Employee Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31682142278224895864)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31683664539260538457)
,p_db_column_name=>'BONUS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Bonus'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31682142651804895865)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316821427'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:SALARY:EMPLOYEE_ID:SALARY_EXCEPTION:BONUS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31682129604594895842)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30889177251942596842)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31682150319475895877)
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31682130079331895844)
,p_name=>'P15_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31682130473163895846)
,p_name=>'P15_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31682130813990895846)
,p_name=>'P15_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31682131238299895847)
,p_name=>'P15_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31682131691448895847)
,p_name=>'P15_MODEL'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31682132058526895847)
,p_name=>'P15_RETURNDIMENSIONS'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31682132465965895848)
,p_name=>'P15_RETURNFOR'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31682132889302895849)
,p_name=>'P15_PERSONID'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31682133286239895849)
,p_name=>'P15_FIRSTNAME'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31682133605260895850)
,p_name=>'P15_LASTNAME'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31682134091128895850)
,p_name=>'P15_HOMEADDRESS'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31682134448292895851)
,p_name=>'P15_ZIPCODE'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31682134886428895851)
,p_name=>'P15_HOMEPHONE'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31682135216805895851)
,p_name=>'P15_USCITIZEN'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31682135696069895852)
,p_name=>'P15_SPOUSE'
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31682136043874895852)
,p_name=>'P15_QUERY'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_item_default=>'''from manager retrieve *;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31682136471173895853)
,p_name=>'P15_QUERY2'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_api.id(31682129236471895841)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31682143125247895869)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31527385488295993707:31527385644191993708'
,p_attribute_01=>wwv_flow_api.id(31527385644191993708)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P15_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'President'
,p_page_mode=>'NORMAL'
,p_step_title=>'President'
,p_step_sub_title=>'President'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428014503'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31685129367463548220)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31526861266785974303)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  ',
'jt1.first_name first_name,  ',
'jt2.last_name last_name,  ',
'jt3.person_id person_id,  ',
'jt4.home_address home_address,  ',
'jt5.zipcode zipcode,  ',
'jt6.home_phone home_phone,  ',
'jt7.us_citizen us_citizen,',
'jt8.employee_id employee_id,',
'jt9.salary salary,',
'jt10.salary_exception salary_exception,',
'jt11.bonus bonus',
'from apex_collections t, ',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1, ',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2, ',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3, ',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4, ',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5, ',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6, ',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8, ',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10,',
'json_table(t.clob001, ''$.bonus[*]'' COLUMNS rid for ordinality, bonus varchar path ''$'') jt11',
'where t.collection_name = ''P16_PERSON_JSON'' and  ',
'jt1.rid = jt2.rid and jt1.rid = jt3.rid and jt1.rid = jt4.rid and jt1.rid = jt5.rid and jt1.rid = jt6.rid and jt1.rid = jt7.rid and jt1.rid = jt8.rid and jt1.rid = jt9.rid and jt1.rid = jt10.rid and jt1.rid = jt11.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31685129772922548221)
,p_name=>'Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'CTLENTE@GMAIL.COM'
,p_internal_uid=>31685129772922548221
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685129852428548226)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685130231591548227)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685130647867548227)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685131056612548228)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685131412594548228)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685131828648548229)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685132589773548229)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685133059618548230)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685133444510548230)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Employee Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685133878365548231)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685134303205548231)
,p_db_column_name=>'BONUS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Bonus'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31685135474653548233)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316851356'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:SALARY:EMPLOYEE_ID:SALARY_EXCEPTION:BONUS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31685136759231548235)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31685144976655548245)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31526861717162974303)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P16_PERSON_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31526870555496974311)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31685145372503548248)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31685137259306548235)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30889177347286596843)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31685153040924548259)
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685137646398548236)
,p_name=>'P16_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685138229084548238)
,p_name=>'P16_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685138607563548239)
,p_name=>'P16_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685139154361548239)
,p_name=>'P16_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685139506661548240)
,p_name=>'P16_MODEL'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685139904320548240)
,p_name=>'P16_RETURNDIMENSIONS'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685140485099548240)
,p_name=>'P16_RETURNFOR'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685140865272548241)
,p_name=>'P16_PERSONID'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685141255399548241)
,p_name=>'P16_FIRSTNAME'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685141793843548242)
,p_name=>'P16_LASTNAME'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685142105183548242)
,p_name=>'P16_HOMEADDRESS'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685142554727548242)
,p_name=>'P16_ZIPCODE'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685142937219548243)
,p_name=>'P16_HOMEPHONE'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685143366146548243)
,p_name=>'P16_USCITIZEN'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685143772578548244)
,p_name=>'P16_SPOUSE'
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685144182683548244)
,p_name=>'P16_QUERY'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_item_default=>'''from president retrieve *;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685144554780548244)
,p_name=>'P16_QUERY2'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_api.id(31685136759231548235)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31685145784245548250)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31527385488295993707:31527385644191993708'
,p_attribute_01=>wwv_flow_api.id(31527385644191993708)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P16_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Interim Manager'
,p_page_mode=>'NORMAL'
,p_step_title=>'Interim Manager'
,p_step_sub_title=>'Interim Manager'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428014526'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31685217326923559397)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31526861266785974303)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  ',
'jt1.first_name first_name,  ',
'jt2.last_name last_name,  ',
'jt3.person_id person_id,  ',
'jt4.home_address home_address,  ',
'jt5.zipcode zipcode,  ',
'jt6.home_phone home_phone,  ',
'jt7.us_citizen us_citizen,',
'jt8.employee_id employee_id,',
'jt9.salary salary,',
'jt10.salary_exception salary_exception,',
'jt11.bonus bonus',
'from apex_collections t, ',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1, ',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2, ',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3, ',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4, ',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5, ',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6, ',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8, ',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10,',
'json_table(t.clob001, ''$.bonus[*]'' COLUMNS rid for ordinality, bonus varchar path ''$'') jt11',
'where t.collection_name = ''P17_PERSON_JSON'' and  ',
'jt1.rid = jt2.rid and jt1.rid = jt3.rid and jt1.rid = jt4.rid and jt1.rid = jt5.rid and jt1.rid = jt6.rid and jt1.rid = jt7.rid and jt1.rid = jt8.rid and jt1.rid = jt9.rid and jt1.rid = jt10.rid and jt1.rid = jt11.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31685217728206559398)
,p_name=>'Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'CTLENTE@GMAIL.COM'
,p_internal_uid=>31685217728206559398
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685217874811559398)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685228294549559399)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685228627580559399)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685229060391559399)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685229495060559400)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685229841023559400)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685230229307559401)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685230602241559401)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685231073404559402)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Employee Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685231401197559402)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685231829171559402)
,p_db_column_name=>'BONUS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Bonus'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31685232272016559403)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316852323'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:SALARY:EMPLOYEE_ID:SALARY_EXCEPTION:BONUS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31685232781837559404)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31685240317904559414)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31526861717162974303)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P17_PERSON_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31526870555496974311)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31685240784428559415)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31685233145754559404)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30889177422509596844)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31685248833524559422)
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685233524532559405)
,p_name=>'P17_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685233939367559406)
,p_name=>'P17_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685234302888559406)
,p_name=>'P17_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685234700256559407)
,p_name=>'P17_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685235165340559407)
,p_name=>'P17_MODEL'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685235506051559408)
,p_name=>'P17_RETURNDIMENSIONS'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685235986973559408)
,p_name=>'P17_RETURNFOR'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685236371484559408)
,p_name=>'P17_PERSONID'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685236776353559409)
,p_name=>'P17_FIRSTNAME'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685237192209559409)
,p_name=>'P17_LASTNAME'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685237570656559410)
,p_name=>'P17_HOMEADDRESS'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685237990143559410)
,p_name=>'P17_ZIPCODE'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685238372115559412)
,p_name=>'P17_HOMEPHONE'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685238787151559412)
,p_name=>'P17_USCITIZEN'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685239115863559413)
,p_name=>'P17_SPOUSE'
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685239508094559413)
,p_name=>'P17_QUERY'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_item_default=>'''from interim-manager retrieve *;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685239911133559413)
,p_name=>'P17_QUERY2'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_api.id(31685232781837559404)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31685241197783559415)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31527385488295993707:31527385644191993708'
,p_attribute_01=>wwv_flow_api.id(31527385644191993708)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P17_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Project Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project Employee'
,p_step_sub_title=>'Project Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428014605'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31685390025153571366)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31685397640123571376)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31526861717162974303)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P18_PERSON_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31526870555496974311)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31685418098293571376)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31685418408344571377)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31526861266785974303)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  ',
'jt1.first_name first_name,  ',
'jt2.last_name last_name,  ',
'jt3.person_id person_id,  ',
'jt4.home_address home_address,  ',
'jt5.zipcode zipcode,  ',
'jt6.home_phone home_phone,  ',
'jt7.us_citizen us_citizen,',
'jt8.employee_id employee_id,',
'jt9.salary salary,',
'jt10.salary_exception salary_exception',
'from apex_collections t, ',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1, ',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2, ',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt3, ',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt4, ',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt5, ',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt6, ',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt8, ',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt10',
'where t.collection_name = ''P18_PERSON_JSON'' and  ',
'jt1.rid = jt2.rid and jt1.rid = jt3.rid and jt1.rid = jt4.rid and jt1.rid = jt5.rid and jt1.rid = jt6.rid and jt1.rid = jt7.rid and jt1.rid = jt8.rid and jt1.rid = jt9.rid and jt1.rid = jt10.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31685418818870571378)
,p_name=>'Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'CTLENTE@GMAIL.COM'
,p_internal_uid=>31685418818870571378
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685418933294571378)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685419337794571379)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685419794174571379)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685420176410571380)
,p_db_column_name=>'HOME_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685420533644571380)
,p_db_column_name=>'ZIPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685420963670571380)
,p_db_column_name=>'HOME_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685421330081571381)
,p_db_column_name=>'US_CITIZEN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685421760073571381)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685422128878571383)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Employee Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31685422599855571384)
,p_db_column_name=>'SALARY_EXCEPTION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31685422909210571384)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316854230'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FIRST_NAME:LAST_NAME:PERSON_ID:HOME_ADDRESS:ZIPCODE:HOME_PHONE:US_CITIZEN:SALARY:EMPLOYEE_ID:SALARY_EXCEPTION'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31685390464799571367)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30889177580942596845)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31685430746097571393)
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685390839601571368)
,p_name=>'P18_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685391286359571368)
,p_name=>'P18_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685391669303571369)
,p_name=>'P18_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685392071308571369)
,p_name=>'P18_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685392467565571370)
,p_name=>'P18_MODEL'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685392802391571370)
,p_name=>'P18_RETURNDIMENSIONS'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685393210292571370)
,p_name=>'P18_RETURNFOR'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685393619978571371)
,p_name=>'P18_PERSONID'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685394090544571371)
,p_name=>'P18_FIRSTNAME'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685394410851571372)
,p_name=>'P18_LASTNAME'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685394876890571372)
,p_name=>'P18_HOMEADDRESS'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685395214797571372)
,p_name=>'P18_ZIPCODE'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685395600590571373)
,p_name=>'P18_HOMEPHONE'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685396039174571373)
,p_name=>'P18_USCITIZEN'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685396499855571373)
,p_name=>'P18_SPOUSE'
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685396889167571374)
,p_name=>'P18_QUERY'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_item_default=>'''from project-employee retrieve *;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31685397299104571374)
,p_name=>'P18_QUERY2'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_api.id(31685390025153571366)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31685423434809571385)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31527385488295993707:31527385644191993708'
,p_attribute_01=>wwv_flow_api.id(31527385644191993708)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P18_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project'
,p_step_sub_title=>'Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428014645'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31686035209473960443)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31686042983998960458)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31526861717162974303)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P19_PROJECT_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31526870555496974311)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31686043394433960459)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31686043750440960460)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31526861266785974303)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  ',
'jt1.project_no project_no,  ',
'jt2.project_title project_title',
'from apex_collections t, ',
'json_table(t.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar path ''$'') jt1, ',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt2',
'where t.collection_name = ''P19_PROJECT_JSON'' and  ',
'jt1.rid = jt2.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31686044080408960462)
,p_name=>'Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'CTLENTE@GMAIL.COM'
,p_internal_uid=>31686044080408960462
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31687450607805618641)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Project No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31687451372378618643)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project Title'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31686046976093960467)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316860470'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_NO:PROJECT_TITLE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31686035618655960445)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30889177660511596846)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31686054739745960477)
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686036187274960446)
,p_name=>'P19_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686036595852960447)
,p_name=>'P19_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686036953831960448)
,p_name=>'P19_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686037346535960448)
,p_name=>'P19_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686037735883960449)
,p_name=>'P19_MODEL'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686038157820960449)
,p_name=>'P19_RETURNDIMENSIONS'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686038514196960451)
,p_name=>'P19_RETURNFOR'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686038945346960451)
,p_name=>'P19_PERSONID'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686039392691960451)
,p_name=>'P19_FIRSTNAME'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686039798830960452)
,p_name=>'P19_LASTNAME'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686040148573960452)
,p_name=>'P19_HOMEADDRESS'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686040526612960453)
,p_name=>'P19_ZIPCODE'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686040941560960453)
,p_name=>'P19_HOMEPHONE'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686041385791960454)
,p_name=>'P19_USCITIZEN'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686041716513960456)
,p_name=>'P19_SPOUSE'
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686042114448960456)
,p_name=>'P19_QUERY'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_item_default=>'''from project retrieve *;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686042547915960457)
,p_name=>'P19_QUERY2'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_api.id(31686035209473960443)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31686047459138960469)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31527385488295993707:31527385644191993708'
,p_attribute_01=>wwv_flow_api.id(31527385644191993708)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P19_PROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Current Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Current Project'
,p_step_sub_title=>'Current Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428014815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31689859849708630365)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31689867421442630374)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31526861717162974303)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P20_PROJECT_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31526870555496974311)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31689867810420630374)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31689888256475630375)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31526861266785974303)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  ',
'jt1.project_no project_no,  ',
'jt2.project_title project_title,',
'jt3.project_active project_active',
'from apex_collections t, ',
'json_table(t.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar path ''$'') jt1, ',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.project_active[*]'' COLUMNS rid for ordinality, project_active varchar path ''$'') jt3',
'where t.collection_name = ''P20_PROJECT_JSON'' and  ',
'jt1.rid = jt2.rid and jt1.rid = jt3.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31689888697754630376)
,p_name=>'Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'CTLENTE@GMAIL.COM'
,p_internal_uid=>31689888697754630376
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31689888782996630376)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Project No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31689889143851630377)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project Title'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31690291182704009931)
,p_db_column_name=>'PROJECT_ACTIVE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Project Active'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31689889575470630377)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316898896'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_NO:PROJECT_TITLE:PROJECT_ACTIVE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31689860268116630366)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30889177711915596847)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30889177843752596848)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_button_name=>'TEAM'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Create Team'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31689897394601630386)
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31689860631268630367)
,p_name=>'P20_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31689861082880630368)
,p_name=>'P20_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31689861468248630368)
,p_name=>'P20_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31689861805724630369)
,p_name=>'P20_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31689862217539630369)
,p_name=>'P20_MODEL'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31689862635732630369)
,p_name=>'P20_RETURNDIMENSIONS'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31689863037998630370)
,p_name=>'P20_RETURNFOR'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31689863431021630370)
,p_name=>'P20_PERSONID'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31689863836287630370)
,p_name=>'P20_FIRSTNAME'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31689864219619630371)
,p_name=>'P20_LASTNAME'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31689864632006630371)
,p_name=>'P20_HOMEADDRESS'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31689865054628630372)
,p_name=>'P20_ZIPCODE'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31689865442584630372)
,p_name=>'P20_HOMEPHONE'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31689865829952630372)
,p_name=>'P20_USCITIZEN'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31689866278676630373)
,p_name=>'P20_SPOUSE'
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31689866624804630373)
,p_name=>'P20_QUERY'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_item_default=>'''from current-project retrieve *;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31689867089510630373)
,p_name=>'P20_QUERY2'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_api.id(31689859849708630365)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31689890068546630378)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31527385488295993707:31527385644191993708'
,p_attribute_01=>wwv_flow_api.id(31527385644191993708)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P20_PROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Previous Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Previous Project'
,p_step_sub_title=>'Previous Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428014848'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31690643894777644671)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31526861266785974303)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  ',
'jt1.project_no project_no,  ',
'jt2.project_title project_title,',
'jt3.end_date_day end_date_day,',
'jt4.end_date_month end_date_month,',
'jt5.end_date_year end_date_year,',
'jt6.est_person_hours est_person_hours',
'from apex_collections t, ',
'json_table(t.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar path ''$'') jt1, ',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.end_date_day[*]'' COLUMNS rid for ordinality, end_date_day varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.end_date_month[*]'' COLUMNS rid for ordinality, end_date_month varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.end_date_year[*]'' COLUMNS rid for ordinality, end_date_year varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.est_person_hours[*]'' COLUMNS rid for ordinality, est_person_hours varchar path ''$'') jt6',
'where t.collection_name = ''P21_PROJECT_JSON'' and  ',
'jt1.rid = jt2.rid and jt1.rid = jt3.rid and jt1.rid = jt4.rid and jt1.rid = jt5.rid and jt1.rid = jt6.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31690644215376644673)
,p_name=>'Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'CTLENTE@GMAIL.COM'
,p_internal_uid=>31690644215376644673
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31690644334573644674)
,p_db_column_name=>'PROJECT_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Project No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31690644797813644675)
,p_db_column_name=>'PROJECT_TITLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project Title'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691312873641653748)
,p_db_column_name=>'EST_PERSON_HOURS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Est Person Hours'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691727056588039415)
,p_db_column_name=>'END_DATE_MONTH'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'End Date Month'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31691727766192039416)
,p_db_column_name=>'END_DATE_YEAR'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'End Date Year'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31735033815070545835)
,p_db_column_name=>'END_DATE_DAY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'End Date Day'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31690645586666644676)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316906456'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PROJECT_NO:PROJECT_TITLE:EST_PERSON_HOURS:END_DATE_MONTH:END_DATE_YEAR:END_DATE_DAY'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31690646013020644679)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31690913696898644688)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31526861717162974303)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P21_PROJECT_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31526870555496974311)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31690914012758644689)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31690646467197644680)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30889177916696596849)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31690921790171644698)
,p_branch_action=>'f?p=&APP_ID.:21:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690646886902644680)
,p_name=>'P21_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690647237529644681)
,p_name=>'P21_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690647662214644682)
,p_name=>'P21_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690908076054644682)
,p_name=>'P21_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690908462204644683)
,p_name=>'P21_MODEL'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690908836528644683)
,p_name=>'P21_RETURNDIMENSIONS'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690909273271644684)
,p_name=>'P21_RETURNFOR'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690909677331644684)
,p_name=>'P21_PERSONID'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690910034570644684)
,p_name=>'P21_FIRSTNAME'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690910409778644685)
,p_name=>'P21_LASTNAME'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690910864247644685)
,p_name=>'P21_HOMEADDRESS'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690911288260644685)
,p_name=>'P21_ZIPCODE'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690911679478644686)
,p_name=>'P21_HOMEPHONE'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690912000336644686)
,p_name=>'P21_USCITIZEN'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690912426206644686)
,p_name=>'P21_SPOUSE'
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690912833166644687)
,p_name=>'P21_QUERY'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_item_default=>'''from previous-project retrieve *;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31690913244737644687)
,p_name=>'P21_QUERY2'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_api.id(31690646013020644679)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31690914486181644690)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31527385488295993707:31527385644191993708'
,p_attribute_01=>wwv_flow_api.id(31527385644191993708)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P21_PROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Department'
,p_page_mode=>'NORMAL'
,p_step_title=>'Department'
,p_step_sub_title=>'Department'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428014926'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31691767206718043880)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(31526861266785974303)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  ',
'jt1.dept_no dept_no,  ',
'jt2.dept_name dept_name',
'from apex_collections t, ',
'json_table(t.clob001, ''$.dept_no[*]'' COLUMNS rid for ordinality, dept_no varchar path ''$'') jt1, ',
'json_table(t.clob001, ''$.dept_name[*]'' COLUMNS rid for ordinality, dept_name varchar path ''$'') jt2',
'where t.collection_name = ''P22_DEPARTMENT_JSON'' and  ',
'jt1.rid = jt2.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31691767657214043881)
,p_name=>'Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'CTLENTE@GMAIL.COM'
,p_internal_uid=>31691767657214043881
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31692311049517059556)
,p_db_column_name=>'DEPT_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Dept No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31692311726304059557)
,p_db_column_name=>'DEPT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Dept Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31691799771487043883)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316917998'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'DEPT_NO:DEPT_NAME'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31691800214261043887)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31691807813103043901)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(31526861717162974303)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P22_DEPARTMENT_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31526870555496974311)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31691808205642043902)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31691800644073043888)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30889188015473596850)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31691815968121043910)
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31691801023942043889)
,p_name=>'P22_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31691801426097043891)
,p_name=>'P22_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31691801842454043891)
,p_name=>'P22_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31691802229797043892)
,p_name=>'P22_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31691802663802043892)
,p_name=>'P22_MODEL'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31691803087126043893)
,p_name=>'P22_RETURNDIMENSIONS'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31691803446418043893)
,p_name=>'P22_RETURNFOR'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31691803800901043896)
,p_name=>'P22_PERSONID'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31691804220622043896)
,p_name=>'P22_FIRSTNAME'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31691804689376043897)
,p_name=>'P22_LASTNAME'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31691805028196043897)
,p_name=>'P22_HOMEADDRESS'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31691805454386043898)
,p_name=>'P22_ZIPCODE'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31691805830855043898)
,p_name=>'P22_HOMEPHONE'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31691806296493043899)
,p_name=>'P22_USCITIZEN'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31691806671593043899)
,p_name=>'P22_SPOUSE'
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31691807068978043900)
,p_name=>'P22_QUERY'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_item_default=>'''from department retrieve *;'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31691807431983043900)
,p_name=>'P22_QUERY2'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_api.id(31691800214261043887)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31691808652741043903)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31527385488295993707:31527385644191993708'
,p_attribute_01=>wwv_flow_api.id(31527385644191993708)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P22_DEPARTMENT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Form on Previous Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on Previous Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427220745'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31735185759662589194)
,p_plug_name=>'Form on Previous Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31735186128361589197)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31735186515550589198)
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31735186128361589197)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735187381141589202)
,p_name=>'P23_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735218199446589204)
,p_name=>'P23_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735218921284589205)
,p_name=>'P23_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735219709888589207)
,p_name=>'P23_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735220571515589208)
,p_name=>'P23_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735221336928589209)
,p_name=>'P23_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735222106050589209)
,p_name=>'P23_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735222987735589210)
,p_name=>'P23_PERSONID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'0'
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735223799828589210)
,p_name=>'P23_FIRSTNAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'""'
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735224549288589211)
,p_name=>'P23_LASTNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'""'
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735225378971589212)
,p_name=>'P23_HOMEADDRESS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'""'
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735226191417589212)
,p_name=>'P23_ZIPCODE'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'0'
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735226935707589213)
,p_name=>'P23_HOMEPHONE'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'0'
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735227765953589214)
,p_name=>'P23_USCITIZEN'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'"true"'
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735228526152589214)
,p_name=>'P23_ISFIRED'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'"true"'
,p_prompt=>'Isfired'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735229316517589215)
,p_name=>'P23_SALARY'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'0'
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735230172301589216)
,p_name=>'P23_SPOUSE'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'0'
,p_prompt=>'Spouse'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735230938541589216)
,p_name=>'P23_QUERY'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'''insert previous-employee (person-id := ''personid'', first-name := ''firstname'', last-name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home-phone := ''homephone'', us-citizen := ''uscitizen'', isfired := ''isfired'', salary := ''salary'
||''');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31735231736174589217)
,p_name=>'P23_QUERY2'
,p_item_sequence=>19
,p_item_plug_id=>wwv_flow_api.id(31735185759662589194)
,p_item_default=>'''MODIFY LIMIT = 1 person ( spouse := previous-employee WITH (person-id = ''personid'') ) WHERE person-id = ''spouse'';'''
,p_prompt=>'Query2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31735186951264589199)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31732205682464590538:31732205844812590538'
,p_attribute_01=>wwv_flow_api.id(31732205844812590538)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P23_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31735186128361589197)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31827382210942652368)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Spouse'
,p_process_sql_clob=>'31732205682464590538:31732205844812590538'
,p_attribute_01=>wwv_flow_api.id(31732205844812590538)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P23_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31735186128361589197)
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Form on Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427222346'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31736300964050048545)
,p_plug_name=>'Form on Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31736301313787048546)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31736301738199048546)
,p_branch_action=>'f?p=&APP_ID.:24:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31736301313787048546)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736302533774048549)
,p_name=>'P24_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736303354798048550)
,p_name=>'P24_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736304143549048551)
,p_name=>'P24_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736304912992048551)
,p_name=>'P24_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736305767439048553)
,p_name=>'P24_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736306551137048553)
,p_name=>'P24_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736307389198048554)
,p_name=>'P24_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736308109281048555)
,p_name=>'P24_PERSONID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'0'
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736309097769048556)
,p_name=>'P24_FIRSTNAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'""'
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736309849824048556)
,p_name=>'P24_LASTNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'""'
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736310681076048558)
,p_name=>'P24_HOMEADDRESS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'""'
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736311460232048558)
,p_name=>'P24_ZIPCODE'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'0'
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736312339231048559)
,p_name=>'P24_HOMEPHONE'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'0'
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736313199120048560)
,p_name=>'P24_USCITIZEN'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'"true"'
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736313984733048560)
,p_name=>'P24_SPOUSE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'0'
,p_prompt=>'Spouse'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736314748481048561)
,p_name=>'P24_EMPLOYEEID'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'0'
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736315569789048562)
,p_name=>'P24_SALARY'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'0'
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736316304918048563)
,p_name=>'P24_SALARYEXCEPTION'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'"true"'
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736317195557048564)
,p_name=>'P24_MANAGER'
,p_item_sequence=>19
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'0'
,p_prompt=>'Manager'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736317909222048564)
,p_name=>'P24_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'''insert employee (person-id := ''personid'', first-name := ''firstname'', last-name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home-phone := ''homephone'', us-citizen := ''uscitizen'', employee-id := ''employeeid'', salary := ''salary'','
||' salary-exception := ''salaryexception'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736318702773048565)
,p_name=>'P24_QUERY2'
,p_item_sequence=>21
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'''MODIFY LIMIT = 1 person ( spouse := employee WITH (person-id = ''personid'') ) WHERE person-id = ''spouse'';'''
,p_prompt=>'Query2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31736319525324048566)
,p_name=>'P24_QUERY3'
,p_item_sequence=>22
,p_item_plug_id=>wwv_flow_api.id(31736300964050048545)
,p_item_default=>'''MODIFY LIMIT = ALL employee ( employee-manager := manager WITH (person-id = ''manager'') ) WHERE person-id = ''personid'';'''
,p_prompt=>'Query3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31736302159347048547)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31734062167916793523:31734062356021793525'
,p_attribute_01=>wwv_flow_api.id(31734062356021793525)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P24_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31736301313787048546)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31829031362025760377)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Spouse'
,p_process_sql_clob=>'31734062167916793523:31734062356021793525'
,p_attribute_01=>wwv_flow_api.id(31734062356021793525)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P24_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31736301313787048546)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31829047132341761905)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Manager'
,p_process_sql_clob=>'31734062167916793523:31734062356021793525'
,p_attribute_01=>wwv_flow_api.id(31734062356021793525)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P24_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31736301313787048546)
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Form on Manager'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on Manager'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428001315'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31737064747190768006)
,p_plug_name=>'Form on Manager'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31737065155904768006)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31737065544800768007)
,p_branch_action=>'f?p=&APP_ID.:25:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31737065155904768006)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737066360670768010)
,p_name=>'P25_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737067173439768011)
,p_name=>'P25_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737067992837768017)
,p_name=>'P25_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737098766389768018)
,p_name=>'P25_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737099529693768019)
,p_name=>'P25_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737100375855768020)
,p_name=>'P25_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737101176139768021)
,p_name=>'P25_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737101947819768021)
,p_name=>'P25_PERSONID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'0'
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737102728874768022)
,p_name=>'P25_FIRSTNAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'""'
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737103417292768022)
,p_name=>'P25_LASTNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'""'
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737104253469768023)
,p_name=>'P25_HOMEADDRESS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'""'
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737105075689768024)
,p_name=>'P25_ZIPCODE'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'0'
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737105899048768024)
,p_name=>'P25_HOMEPHONE'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'0'
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737106665804768025)
,p_name=>'P25_USCITIZEN'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'"true"'
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737107407551768026)
,p_name=>'P25_SPOUSE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'0'
,p_prompt=>'Spouse'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737108213279768027)
,p_name=>'P25_EMPLOYEEID'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'0'
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737109047019768028)
,p_name=>'P25_SALARY'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'0'
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737109841546768028)
,p_name=>'P25_SALARYEXCEPTION'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'"true"'
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737110635452768029)
,p_name=>'P25_MANAGER'
,p_item_sequence=>19
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'0'
,p_prompt=>'Manager'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737111486710768030)
,p_name=>'P25_BONUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'0'
,p_prompt=>'Bonus'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737112225749768031)
,p_name=>'P25_DEPARTMENT'
,p_item_sequence=>21
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'0'
,p_prompt=>'Department'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737113012866768031)
,p_name=>'P25_QUERY'
,p_item_sequence=>22
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'''insert manager (person-id := ''personid'', first-name := ''firstname'', last-name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home-phone := ''homephone'', us-citizen := ''uscitizen'', employee-id := ''employeeid'', salary := ''salary'', '
||'salary-exception := ''salaryexception'', bonus := ''bonus'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737113835426768032)
,p_name=>'P25_QUERY2'
,p_item_sequence=>23
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'''MODIFY LIMIT = 1 person ( spouse := manager WITH (person-id = ''personid'') ) WHERE person-id = ''spouse'';'''
,p_prompt=>'Query2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737114623962768033)
,p_name=>'P25_QUERY3'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'''MODIFY LIMIT = ALL manager ( employee-manager := manager WITH (person-id = ''manager'') ) WHERE person-id = ''personid'';'''
,p_prompt=>'Query3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737115484468768033)
,p_name=>'P25_QUERY4'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(31737064747190768006)
,p_item_default=>'''MODIFY LIMIT = ALL manager ( manager-dept := department WITH (dept-no = ''department'') ) WHERE person-id = ''personid'';'''
,p_prompt=>'Query4'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31737065901625768008)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31734136114714436409:31734136345879436409'
,p_attribute_01=>wwv_flow_api.id(31734136345879436409)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P25_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737065155904768006)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31840139653888082937)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Spouse'
,p_process_sql_clob=>'31734136114714436409:31734136345879436409'
,p_attribute_01=>wwv_flow_api.id(31734136345879436409)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P25_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737065155904768006)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31840227417632459679)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Manager'
,p_process_sql_clob=>'31734136114714436409:31734136345879436409'
,p_attribute_01=>wwv_flow_api.id(31734136345879436409)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P25_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737065155904768006)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31840230132808085890)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Department'
,p_process_sql_clob=>'31734136114714436409:31734136345879436409'
,p_attribute_01=>wwv_flow_api.id(31734136345879436409)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P25_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737065155904768006)
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Form on President'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on President'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428003542'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31737248326908163594)
,p_plug_name=>'Form on President'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31737248793978163595)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31737249100937163596)
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31737248793978163595)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737249969543163599)
,p_name=>'P26_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737250743813163600)
,p_name=>'P26_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737251571084163601)
,p_name=>'P26_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737252345922163602)
,p_name=>'P26_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737253143047163603)
,p_name=>'P26_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737253959378163604)
,p_name=>'P26_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737254748687163605)
,p_name=>'P26_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737255657165163606)
,p_name=>'P26_PERSONID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'0'
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737256405809163606)
,p_name=>'P26_FIRSTNAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'""'
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737257220796163607)
,p_name=>'P26_LASTNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'""'
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737258018471163608)
,p_name=>'P26_HOMEADDRESS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'""'
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737258807108163609)
,p_name=>'P26_ZIPCODE'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'0'
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737259621383163610)
,p_name=>'P26_HOMEPHONE'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'0'
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737260441969163610)
,p_name=>'P26_USCITIZEN'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'"true"'
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737261231718163611)
,p_name=>'P26_SPOUSE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'0'
,p_prompt=>'Spouse'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737262037979163612)
,p_name=>'P26_EMPLOYEEID'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'0'
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737262879755163613)
,p_name=>'P26_SALARY'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'0'
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737263601295163613)
,p_name=>'P26_SALARYEXCEPTION'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'"true"'
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737264474700163614)
,p_name=>'P26_MANAGER'
,p_item_sequence=>19
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'0'
,p_prompt=>'Manager'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737265270278163615)
,p_name=>'P26_BONUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'0'
,p_prompt=>'Bonus'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737266033136163615)
,p_name=>'P26_DEPARTMENT'
,p_item_sequence=>21
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'0'
,p_prompt=>'Department'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737266890987163616)
,p_name=>'P26_QUERY'
,p_item_sequence=>22
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'''insert president (person-id := ''personid'', first-name := ''firstname'', last-name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home-phone := ''homephone'', us-citizen := ''uscitizen'', employee-id := ''employeeid'', salary := ''salary'''
||', salary-exception := ''salaryexception'', bonus := ''bonus'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737267671066163617)
,p_name=>'P26_QUERY2'
,p_item_sequence=>23
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'''MODIFY LIMIT = 1 person ( spouse := president WITH (person-id = ''personid'') ) WHERE person-id = ''spouse'';'''
,p_prompt=>'Query2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737268457258163617)
,p_name=>'P26_QUERY3'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'''MODIFY LIMIT = ALL president ( employee-manager := manager WITH (person-id = ''manager'') ) WHERE person-id = ''personid'';'''
,p_prompt=>'Query3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737269230300163618)
,p_name=>'P26_QUERY4'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(31737248326908163594)
,p_item_default=>'''MODIFY LIMIT = ALL president ( manager-dept := department WITH (dept-no = ''department'') ) WHERE person-id = ''personid'';'''
,p_prompt=>'Query4'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31737249550508163597)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31734381214104829538:31734381463948829538'
,p_attribute_01=>wwv_flow_api.id(31734381463948829538)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P26_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737248793978163595)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841274533035592667)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Spouse'
,p_process_sql_clob=>'31734381214104829538:31734381463948829538'
,p_attribute_01=>wwv_flow_api.id(31734381463948829538)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P26_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737248793978163595)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841285601859594005)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Manager'
,p_process_sql_clob=>'31734381214104829538:31734381463948829538'
,p_attribute_01=>wwv_flow_api.id(31734381463948829538)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P26_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737248793978163595)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841242264878220356)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Department'
,p_process_sql_clob=>'31734381214104829538:31734381463948829538'
,p_attribute_01=>wwv_flow_api.id(31734381463948829538)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P26_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737248793978163595)
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_api.create_page(
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Form on Interim Manager'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on Interim Manager'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428003703'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31737591607212820619)
,p_plug_name=>'Form on Interim Manager'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31737592047224820620)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31737592465484820620)
,p_branch_action=>'f?p=&APP_ID.:27:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31737592047224820620)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737593232683820622)
,p_name=>'P27_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737594002644820623)
,p_name=>'P27_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737594821613820624)
,p_name=>'P27_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737595639203820625)
,p_name=>'P27_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737596464227820626)
,p_name=>'P27_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737597230130820627)
,p_name=>'P27_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737638073065820628)
,p_name=>'P27_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737638890860820628)
,p_name=>'P27_SALARY'
,p_item_sequence=>73
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'0'
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737639686794820629)
,p_name=>'P27_PERSONID'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'0'
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737640427274820630)
,p_name=>'P27_FIRSTNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'""'
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737641247353820631)
,p_name=>'P27_LASTNAME'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'""'
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737642066079820631)
,p_name=>'P27_SALARYEXCEPTION'
,p_item_sequence=>83
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'"true"'
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737642886381820632)
,p_name=>'P27_HOMEADDRESS'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'""'
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737643631395820633)
,p_name=>'P27_MANAGER'
,p_item_sequence=>93
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'0'
,p_prompt=>'Manager'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737644400160820633)
,p_name=>'P27_BONUS'
,p_item_sequence=>103
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'0'
,p_prompt=>'Bonus'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737645209164820634)
,p_name=>'P27_ZIPCODE'
,p_item_sequence=>23
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'0'
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737646073583820635)
,p_name=>'P27_HOMEPHONE'
,p_item_sequence=>33
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'0'
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737646880726820636)
,p_name=>'P27_USCITIZEN'
,p_item_sequence=>43
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'"true"'
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737647638086820637)
,p_name=>'P27_SPOUSE'
,p_item_sequence=>53
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'0'
,p_prompt=>'Spouse'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737648444784820637)
,p_name=>'P27_EMPLOYEEID'
,p_item_sequence=>63
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'0'
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737649246491820638)
,p_name=>'P27_DEPARTMENT'
,p_item_sequence=>113
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'0'
,p_prompt=>'Department'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737650080535820639)
,p_name=>'P27_QUERY'
,p_item_sequence=>123
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'''insert interim-manager (person-id := ''personid'', first-name := ''firstname'', last-name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home-phone := ''homephone'', us-citizen := ''uscitizen'', employee-id := ''employeeid'', salary := ''s'
||'alary'', salary-exception := ''salaryexception'', bonus := ''bonus'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737650816349820639)
,p_name=>'P27_QUERY2'
,p_item_sequence=>133
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'''MODIFY LIMIT = 1 person ( spouse := interim-manager WITH (person-id = ''personid'') ) WHERE person-id = ''spouse'';'''
,p_prompt=>'Query2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737651642550820640)
,p_name=>'P27_QUERY3'
,p_item_sequence=>143
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'''MODIFY LIMIT = ALL interim-manager ( employee-manager := manager WITH (person-id = ''manager'') ) WHERE person-id = ''personid'';'''
,p_prompt=>'Query3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737652447533820641)
,p_name=>'P27_QUERY4'
,p_item_sequence=>153
,p_item_plug_id=>wwv_flow_api.id(31737591607212820619)
,p_item_default=>'''MODIFY LIMIT = ALL interim-manager ( manager-dept := department WITH (dept-no = ''department'') ) WHERE person-id = ''personid'';'''
,p_prompt=>'Query4'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31737592826087820621)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31734463424427838857:31734463682389838857'
,p_attribute_01=>wwv_flow_api.id(31734463682389838857)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P27_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737592047224820620)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841329050139226699)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Spouse'
,p_process_sql_clob=>'31734463424427838857:31734463682389838857'
,p_attribute_01=>wwv_flow_api.id(31734463682389838857)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P27_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737592047224820620)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841350208384228369)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Manager'
,p_process_sql_clob=>'31734463424427838857:31734463682389838857'
,p_attribute_01=>wwv_flow_api.id(31734463682389838857)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P27_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737592047224820620)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841339092162604865)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Department'
,p_process_sql_clob=>'31734463424427838857:31734463682389838857'
,p_attribute_01=>wwv_flow_api.id(31734463682389838857)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P27_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737592047224820620)
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_api.create_page(
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Form on Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428004025'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31737794793400836956)
,p_plug_name=>'Form on Project'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31737795142779836957)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31737794793400836956)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31737795506138836957)
,p_branch_action=>'f?p=&APP_ID.:28:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31737795142779836957)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737796382319836959)
,p_name=>'P28_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31737794793400836956)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737797122497836961)
,p_name=>'P28_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31737794793400836956)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737797955513836961)
,p_name=>'P28_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31737794793400836956)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737798756477836962)
,p_name=>'P28_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31737794793400836956)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737799594844836963)
,p_name=>'P28_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31737794793400836956)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737800327337836964)
,p_name=>'P28_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31737794793400836956)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737801171702836964)
,p_name=>'P28_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31737794793400836956)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737801941520836965)
,p_name=>'P28_PROJECTNO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31737794793400836956)
,p_item_default=>'0'
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737802775477836966)
,p_name=>'P28_PROJECTTITLE'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31737794793400836956)
,p_item_default=>'""'
,p_prompt=>'Projecttitle'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737803570994836967)
,p_name=>'P28_MANAGER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31737794793400836956)
,p_item_default=>'0'
,p_prompt=>'Manager'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737804346837836969)
,p_name=>'P28_SUPERPROJECT'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31737794793400836956)
,p_item_default=>'0'
,p_prompt=>'Superproject'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737805154931836970)
,p_name=>'P28_DEPARTMENT'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31737794793400836956)
,p_item_default=>'0'
,p_prompt=>'Department'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737805947637836970)
,p_name=>'P28_QUERY'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31737794793400836956)
,p_item_default=>'''insert project (project-no := ''projectno'', project-title := ''projecttitle'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737806753400836972)
,p_name=>'P28_QUERY2'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31737794793400836956)
,p_item_default=>'''MODIFY LIMIT = ALL project (project-manager := manager WITH (person-id = ''manager'') ) WHERE project-no = ''projectno'';'''
,p_prompt=>'Query2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737807542597836973)
,p_name=>'P28_QUERY3'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31737794793400836956)
,p_item_default=>'''MODIFY LIMIT = ALL project (sub-project-of := project WITH (project-no = ''superproject'') ) WHERE project-no = ''projectno'';'''
,p_prompt=>'Query3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737808306664836973)
,p_name=>'P28_QUERY4'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31737794793400836956)
,p_item_default=>'''MODIFY LIMIT = ALL project (dept-assigned := department WITH (dept-no = ''department'') ) WHERE project-no = ''projectno'';'''
,p_prompt=>'Query4'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31737795976470836958)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31734930444699518418:31734930669463518420'
,p_attribute_01=>wwv_flow_api.id(31734930669463518420)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P28_PROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737795142779836957)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841490628709621353)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Manager'
,p_process_sql_clob=>'31734930444699518418:31734930669463518420'
,p_attribute_01=>wwv_flow_api.id(31734930669463518420)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P28_PROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737795142779836957)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841497933788623160)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Superproject'
,p_process_sql_clob=>'31734930444699518418:31734930669463518420'
,p_attribute_01=>wwv_flow_api.id(31734930669463518420)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P28_PROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737795142779836957)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841515702920624923)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Department'
,p_process_sql_clob=>'31734930444699518418:31734930669463518420'
,p_attribute_01=>wwv_flow_api.id(31734930669463518420)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P28_PROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737795142779836957)
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Form on Current Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on Current Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428004138'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31737889027915226674)
,p_plug_name=>'Form on Current Project'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31737889413821226675)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31737889027915226674)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31737889815666226676)
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31737889413821226675)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737890635049226678)
,p_name=>'P29_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31737889027915226674)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737891428638226680)
,p_name=>'P29_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31737889027915226674)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737892234054226682)
,p_name=>'P29_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31737889027915226674)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737893022633226686)
,p_name=>'P29_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31737889027915226674)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737893865900226686)
,p_name=>'P29_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31737889027915226674)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737894664936226687)
,p_name=>'P29_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31737889027915226674)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737895498262226688)
,p_name=>'P29_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31737889027915226674)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737896247732226689)
,p_name=>'P29_PROJECTNO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31737889027915226674)
,p_item_default=>'0'
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737897013531226690)
,p_name=>'P29_PROJECTTITLE'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31737889027915226674)
,p_item_default=>'""'
,p_prompt=>'Projecttitle'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737897815620226691)
,p_name=>'P29_PROJECTACTIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31737889027915226674)
,p_item_default=>'"true"'
,p_prompt=>'Projectactive'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737898610905226691)
,p_name=>'P29_MANAGER'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31737889027915226674)
,p_item_default=>'0'
,p_prompt=>'Manager'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737899451756226692)
,p_name=>'P29_SUPERPROJECT'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31737889027915226674)
,p_item_default=>'0'
,p_prompt=>'Superproject'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737900241161226693)
,p_name=>'P29_DEPARTMENT'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31737889027915226674)
,p_item_default=>'0'
,p_prompt=>'Department'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737901023418226694)
,p_name=>'P29_QUERY'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31737889027915226674)
,p_item_default=>'''insert current-project (project-no := ''projectno'', project-title := ''projecttitle'', project-active := ''projectactive'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737901858018226694)
,p_name=>'P29_QUERY2'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31737889027915226674)
,p_item_default=>'''MODIFY LIMIT = ALL current-project (project-manager := manager WITH (person-id = ''manager'') ) WHERE project-no = ''projectno'';'''
,p_prompt=>'Query2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737902686107226695)
,p_name=>'P29_QUERY3'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31737889027915226674)
,p_item_default=>'''MODIFY LIMIT = ALL current-project (sub-project-of := project WITH (project-no = ''superproject'') ) WHERE project-no = ''projectno'';'''
,p_prompt=>'Query3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31737903454704226696)
,p_name=>'P29_QUERY4'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31737889027915226674)
,p_item_default=>'''MODIFY LIMIT = ALL current-project (dept-assigned := department WITH (dept-no = ''department'') ) WHERE project-no = ''projectno'';'''
,p_prompt=>'Query4'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31737890268281226676)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31734956032872526950:31734956256037526950'
,p_attribute_01=>wwv_flow_api.id(31734956256037526950)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P29_PROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737889413821226675)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841538427675629877)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Manager'
,p_process_sql_clob=>'31734956032872526950:31734956256037526950'
,p_attribute_01=>wwv_flow_api.id(31734956256037526950)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P29_PROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737889413821226675)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841558224046255772)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Superproject'
,p_process_sql_clob=>'31734956032872526950:31734956256037526950'
,p_attribute_01=>wwv_flow_api.id(31734956256037526950)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P29_PROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737889413821226675)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841567048288257226)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Department'
,p_process_sql_clob=>'31734956032872526950:31734956256037526950'
,p_attribute_01=>wwv_flow_api.id(31734956256037526950)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P29_PROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31737889413821226675)
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Form on Previous Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on Previous Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428004327'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31738001715929874205)
,p_plug_name=>'Form on Previous Project'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31738002160865874206)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31738002466109874206)
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31738002160865874206)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738003286415874208)
,p_name=>'P30_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738004064976874209)
,p_name=>'P30_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738004875046874211)
,p_name=>'P30_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738005674320874211)
,p_name=>'P30_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738006412870874212)
,p_name=>'P30_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738007201013874213)
,p_name=>'P30_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738028022967874214)
,p_name=>'P30_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738028865151874214)
,p_name=>'P30_PROJECTNO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'0'
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738029616976874215)
,p_name=>'P30_PROJECTTITLE'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'""'
,p_prompt=>'Projecttitle'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738030492539874216)
,p_name=>'P30_ENDDATEMONTH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'1'
,p_prompt=>'Enddatemonth'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738031232437874216)
,p_name=>'P30_ENDDATEDAY'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'1'
,p_prompt=>'Enddateday'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738032066748874217)
,p_name=>'P30_ENDDATEYEAR'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'1970'
,p_prompt=>'Enddateyear'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738032825809874217)
,p_name=>'P30_MANAGER'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'0'
,p_prompt=>'Manager'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738033622201874218)
,p_name=>'P30_SUPERPROJECT'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'0'
,p_prompt=>'Superproject'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738034493956874219)
,p_name=>'P30_DEPARTMENT'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'0'
,p_prompt=>'Department'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738035276875874219)
,p_name=>'P30_QUERY'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'''insert previous-project (project-no := ''projectno'', project-title := ''projecttitle'', end-date-month := ''enddatemonth'', end-date-day := ''enddateday'', end-date-year := ''enddateyear'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738036012722874220)
,p_name=>'P30_QUERY2'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'''MODIFY LIMIT = ALL previous-project (project-manager := manager WITH (person-id = ''manager'') ) WHERE project-no = ''projectno'';'''
,p_prompt=>'Query2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738036885993874221)
,p_name=>'P30_QUERY3'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'''MODIFY LIMIT = ALL previous-project (sub-project-of := project WITH (project-no = ''superproject'') ) WHERE project-no = ''projectno'';'''
,p_prompt=>'Query3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738037658776874222)
,p_name=>'P30_QUERY4'
,p_item_sequence=>19
,p_item_plug_id=>wwv_flow_api.id(31738001715929874205)
,p_item_default=>'''MODIFY LIMIT = ALL previous-project (dept-assigned := department WITH (dept-no = ''department'') ) WHERE project-no = ''projectno'';'''
,p_prompt=>'Query4'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31738002893904874207)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31735074677956554797:31735074865573554797'
,p_attribute_01=>wwv_flow_api.id(31735074865573554797)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P30_PROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31738002160865874206)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841601125267640480)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Manager'
,p_process_sql_clob=>'31735074677956554797:31735074865573554797'
,p_attribute_01=>wwv_flow_api.id(31735074865573554797)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P30_PROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31738002160865874206)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841639252653641488)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Superproject'
,p_process_sql_clob=>'31735074677956554797:31735074865573554797'
,p_attribute_01=>wwv_flow_api.id(31735074865573554797)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P30_PROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31738002160865874206)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841633941502268144)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Department'
,p_process_sql_clob=>'31735074677956554797:31735074865573554797'
,p_attribute_01=>wwv_flow_api.id(31735074865573554797)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P30_PROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31738002160865874206)
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Form on Department'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on Department'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427044340'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31738092073833887859)
,p_plug_name=>'Form on Department'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31738092422727887860)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31738092073833887859)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31738092817237887861)
,p_branch_action=>'f?p=&APP_ID.:31:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31738092422727887860)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738093640982887863)
,p_name=>'P31_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31738092073833887859)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738094474220887864)
,p_name=>'P31_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31738092073833887859)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738095200680887866)
,p_name=>'P31_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31738092073833887859)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738096050973887866)
,p_name=>'P31_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31738092073833887859)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738096876175887867)
,p_name=>'P31_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31738092073833887859)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738097612412887868)
,p_name=>'P31_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31738092073833887859)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738118459432887869)
,p_name=>'P31_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31738092073833887859)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738119210487887869)
,p_name=>'P31_DEPTNO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31738092073833887859)
,p_item_default=>'0'
,p_prompt=>'Deptno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738120019197887870)
,p_name=>'P31_DEPTNAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31738092073833887859)
,p_item_default=>'""'
,p_prompt=>'Deptname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738120878528887871)
,p_name=>'P31_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31738092073833887859)
,p_item_default=>'''insert department (dept-no := ''deptno'', dept-name := ''deptname'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31738093200928887862)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31735084426122562599:31735084617147562599'
,p_attribute_01=>wwv_flow_api.id(31735084617147562599)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P30_DEPARTMENT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31738092422727887860)
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_api.create_page(
 p_id=>32
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Form on Project Employee'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on Project Employee'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428004457'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31738970219340364205)
,p_plug_name=>'Form on Project Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31738970648436364206)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31738971008999364206)
,p_branch_action=>'f?p=&APP_ID.:32:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31738970648436364206)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738971946184364208)
,p_name=>'P32_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738972728088364209)
,p_name=>'P32_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738973522399364210)
,p_name=>'P32_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738974355459364211)
,p_name=>'P32_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738975195846364212)
,p_name=>'P32_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738975975832364212)
,p_name=>'P32_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738976711684364213)
,p_name=>'P32_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738977541443364214)
,p_name=>'P32_PERSONID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'0'
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738978393956364215)
,p_name=>'P32_FIRSTNAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'""'
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738979156521364215)
,p_name=>'P32_LASTNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'""'
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738979911931364216)
,p_name=>'P32_HOMEADDRESS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'""'
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738980737090364217)
,p_name=>'P32_ZIPCODE'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'0'
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738981566280364217)
,p_name=>'P32_HOMEPHONE'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'0'
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738982348623364218)
,p_name=>'P32_USCITIZEN'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'"true"'
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738983177518364219)
,p_name=>'P32_SPOUSE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'0'
,p_prompt=>'Spouse'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738983900508364219)
,p_name=>'P32_EMPLOYEEID'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'0'
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738984768825364220)
,p_name=>'P32_SALARY'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'0'
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738985548424364221)
,p_name=>'P32_SALARYEXCEPTION'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'"true"'
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738986392450364221)
,p_name=>'P32_MANAGER'
,p_item_sequence=>19
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'0'
,p_prompt=>'Manager'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738987135726364222)
,p_name=>'P32_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'''insert project-employee (person-id := ''personid'', first-name := ''firstname'', last-name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home-phone := ''homephone'', us-citizen := ''uscitizen'', employee-id := ''employeeid'', salary := '''
||'salary'', salary-exception := ''salaryexception'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738987955455364223)
,p_name=>'P32_QUERY2'
,p_item_sequence=>21
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'''MODIFY LIMIT = 1 person ( spouse := project-employee WITH (person-id = ''personid'') ) WHERE person-id = ''spouse'';'''
,p_prompt=>'Query2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31738988718028364224)
,p_name=>'P32_QUERY3'
,p_item_sequence=>22
,p_item_plug_id=>wwv_flow_api.id(31738970219340364205)
,p_item_default=>'''MODIFY LIMIT = ALL project-employee ( employee-manager := manager WITH (person-id = ''manager'') ) WHERE person-id = ''personid'';'''
,p_prompt=>'Query3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31738971455672364207)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31734606909378861067:31734607198076861068'
,p_attribute_01=>wwv_flow_api.id(31734607198076861068)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P32_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31738970648436364206)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841725725881276173)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Spouse'
,p_process_sql_clob=>'31734606909378861067:31734607198076861068'
,p_attribute_01=>wwv_flow_api.id(31734607198076861068)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P32_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31738970648436364206)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31841746329589277993)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Manager'
,p_process_sql_clob=>'31734606909378861067:31734607198076861068'
,p_attribute_01=>wwv_flow_api.id(31734607198076861068)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P32_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31738970648436364206)
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_api.create_page(
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Form on Family'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on Family'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428010401'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31842141633330356991)
,p_plug_name=>'Form on Family'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31842142031439356991)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31842141633330356991)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31842142492119356991)
,p_branch_action=>'f?p=&APP_ID.:33:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31842142031439356991)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842143201810356993)
,p_name=>'P33_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31842141633330356991)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842144084634356993)
,p_name=>'P33_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31842141633330356991)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842144805260356994)
,p_name=>'P33_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31842141633330356991)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842145699682356995)
,p_name=>'P33_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31842141633330356991)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842146482835356995)
,p_name=>'P33_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31842141633330356991)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842147251190356996)
,p_name=>'P33_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31842141633330356991)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842158002072356996)
,p_name=>'P33_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31842141633330356991)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842158883999356997)
,p_name=>'P33_PERSONID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31842141633330356991)
,p_item_default=>'0'
,p_prompt=>'Parent'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842159670113356998)
,p_name=>'P33_PERSONID2'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31842141633330356991)
,p_item_default=>'0'
,p_prompt=>'Child'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842160448846356998)
,p_name=>'P33_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31842141633330356991)
,p_item_default=>'''MODIFY Person ( children := INCLUDE Person WITH (person-id = ''child'')) WHERE person-id = ''parent'';'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31842142861052356992)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31841995829605316341:31841996015196316342'
,p_attribute_01=>wwv_flow_api.id(31841996015196316342)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P33_FAMILY_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31842142031439356991)
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_api.create_page(
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(31526888211861974334)
,p_name=>'Form on Team'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on Team'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CTLENTE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160428012835'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31842363988671805752)
,p_plug_name=>'Form on Team'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(31526861717162974303)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31842364308254805752)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31842363988671805752)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(31526883019060974323)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31842364706117805754)
,p_branch_action=>'f?p=&APP_ID.:34:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31842364308254805752)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842365566110805757)
,p_name=>'P34_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(31842363988671805752)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842366217426805762)
,p_name=>'P34_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(31842363988671805752)
,p_item_default=>'WDBC4'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842367035231805762)
,p_name=>'P34_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(31842363988671805752)
,p_item_default=>'localhost:6021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842367813538805763)
,p_name=>'P34_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(31842363988671805752)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842488662027805764)
,p_name=>'P34_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(31842363988671805752)
,p_item_default=>'C4'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842489431730805765)
,p_name=>'P34_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(31842363988671805752)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842490234493805765)
,p_name=>'P34_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(31842363988671805752)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842491084829805766)
,p_name=>'P34_PERSONID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(31842363988671805752)
,p_item_default=>'0'
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842491859918805767)
,p_name=>'P34_PROJECTNO'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(31842363988671805752)
,p_item_default=>'0'
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31842492672923805768)
,p_name=>'P34_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31842363988671805752)
,p_item_default=>'''MODIFY project-employee ( current-projects := INCLUDE current-project WITH (project-no = ''projectno'')) WHERE person-id = ''personid'';'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(31526882247181974321)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31842365147975805755)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31842019058557324333:31842019264067324333'
,p_attribute_01=>wwv_flow_api.id(31842019264067324333)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P34_TEAM_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31842364308254805752)
);
end;
/
prompt --application/shared_components/logic/webservices/person
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31527385488295993707)
,p_name=>'Person'
,p_url=>'aevum.cs.utexas.edu:6020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31527385644191993708)
,p_ws_id=>wwv_flow_api.id(31527385488295993707)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31527385916032993710)
,p_ws_opers_id=>wwv_flow_api.id(31527385644191993708)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31539166924499292106)
,p_parameter_id=>wwv_flow_api.id(31527385916032993710)
,p_process_id=>wwv_flow_api.id(31539166103686292104)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31540687963322411110)
,p_parameter_id=>wwv_flow_api.id(31527385916032993710)
,p_process_id=>wwv_flow_api.id(31540687119845411108)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678744026259240123)
,p_parameter_id=>wwv_flow_api.id(31527385916032993710)
,p_process_id=>wwv_flow_api.id(31678743708427240118)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31679486638580659795)
,p_parameter_id=>wwv_flow_api.id(31527385916032993710)
,p_process_id=>wwv_flow_api.id(31679486282892659793)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681336056861821331)
,p_parameter_id=>wwv_flow_api.id(31527385916032993710)
,p_process_id=>wwv_flow_api.id(31681335617709821330)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31682143517797895870)
,p_parameter_id=>wwv_flow_api.id(31527385916032993710)
,p_process_id=>wwv_flow_api.id(31682143125247895869)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685146107695548252)
,p_parameter_id=>wwv_flow_api.id(31527385916032993710)
,p_process_id=>wwv_flow_api.id(31685145784245548250)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685241514338559416)
,p_parameter_id=>wwv_flow_api.id(31527385916032993710)
,p_process_id=>wwv_flow_api.id(31685241197783559415)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685423835191571386)
,p_parameter_id=>wwv_flow_api.id(31527385916032993710)
,p_process_id=>wwv_flow_api.id(31685423434809571385)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31686047810924960470)
,p_parameter_id=>wwv_flow_api.id(31527385916032993710)
,p_process_id=>wwv_flow_api.id(31686047459138960469)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31689890418661630379)
,p_parameter_id=>wwv_flow_api.id(31527385916032993710)
,p_process_id=>wwv_flow_api.id(31689890068546630378)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690914850905644691)
,p_parameter_id=>wwv_flow_api.id(31527385916032993710)
,p_process_id=>wwv_flow_api.id(31690914486181644690)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31691809063517043904)
,p_parameter_id=>wwv_flow_api.id(31527385916032993710)
,p_process_id=>wwv_flow_api.id(31691808652741043903)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31527386250231993710)
,p_ws_opers_id=>wwv_flow_api.id(31527385644191993708)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31539167742196292107)
,p_parameter_id=>wwv_flow_api.id(31527386250231993710)
,p_process_id=>wwv_flow_api.id(31539166103686292104)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31540688777218411111)
,p_parameter_id=>wwv_flow_api.id(31527386250231993710)
,p_process_id=>wwv_flow_api.id(31540687119845411108)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678744436155240125)
,p_parameter_id=>wwv_flow_api.id(31527386250231993710)
,p_process_id=>wwv_flow_api.id(31678743708427240118)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31679487080740659795)
,p_parameter_id=>wwv_flow_api.id(31527386250231993710)
,p_process_id=>wwv_flow_api.id(31679486282892659793)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681336496117821333)
,p_parameter_id=>wwv_flow_api.id(31527386250231993710)
,p_process_id=>wwv_flow_api.id(31681335617709821330)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31682143898928895871)
,p_parameter_id=>wwv_flow_api.id(31527386250231993710)
,p_process_id=>wwv_flow_api.id(31682143125247895869)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685146550550548253)
,p_parameter_id=>wwv_flow_api.id(31527386250231993710)
,p_process_id=>wwv_flow_api.id(31685145784245548250)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685241957933559416)
,p_parameter_id=>wwv_flow_api.id(31527386250231993710)
,p_process_id=>wwv_flow_api.id(31685241197783559415)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685424263227571387)
,p_parameter_id=>wwv_flow_api.id(31527386250231993710)
,p_process_id=>wwv_flow_api.id(31685423434809571385)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31686048246269960471)
,p_parameter_id=>wwv_flow_api.id(31527386250231993710)
,p_process_id=>wwv_flow_api.id(31686047459138960469)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31689890875801630379)
,p_parameter_id=>wwv_flow_api.id(31527386250231993710)
,p_process_id=>wwv_flow_api.id(31689890068546630378)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690915258358644691)
,p_parameter_id=>wwv_flow_api.id(31527386250231993710)
,p_process_id=>wwv_flow_api.id(31690914486181644690)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31691809468135043905)
,p_parameter_id=>wwv_flow_api.id(31527386250231993710)
,p_process_id=>wwv_flow_api.id(31691808652741043903)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31527386555806993710)
,p_ws_opers_id=>wwv_flow_api.id(31527385644191993708)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31539188582178292109)
,p_parameter_id=>wwv_flow_api.id(31527386555806993710)
,p_process_id=>wwv_flow_api.id(31539166103686292104)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31540689559450411112)
,p_parameter_id=>wwv_flow_api.id(31527386555806993710)
,p_process_id=>wwv_flow_api.id(31540687119845411108)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678744853877240125)
,p_parameter_id=>wwv_flow_api.id(31527386555806993710)
,p_process_id=>wwv_flow_api.id(31678743708427240118)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31679487431958659796)
,p_parameter_id=>wwv_flow_api.id(31527386555806993710)
,p_process_id=>wwv_flow_api.id(31679486282892659793)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681336808646821333)
,p_parameter_id=>wwv_flow_api.id(31527386555806993710)
,p_process_id=>wwv_flow_api.id(31681335617709821330)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31682144270071895871)
,p_parameter_id=>wwv_flow_api.id(31527386555806993710)
,p_process_id=>wwv_flow_api.id(31682143125247895869)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685146922338548253)
,p_parameter_id=>wwv_flow_api.id(31527386555806993710)
,p_process_id=>wwv_flow_api.id(31685145784245548250)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685242365855559417)
,p_parameter_id=>wwv_flow_api.id(31527386555806993710)
,p_process_id=>wwv_flow_api.id(31685241197783559415)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685424627342571387)
,p_parameter_id=>wwv_flow_api.id(31527386555806993710)
,p_process_id=>wwv_flow_api.id(31685423434809571385)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31686048636837960471)
,p_parameter_id=>wwv_flow_api.id(31527386555806993710)
,p_process_id=>wwv_flow_api.id(31686047459138960469)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31689891213138630380)
,p_parameter_id=>wwv_flow_api.id(31527386555806993710)
,p_process_id=>wwv_flow_api.id(31689890068546630378)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690915602181644691)
,p_parameter_id=>wwv_flow_api.id(31527386555806993710)
,p_process_id=>wwv_flow_api.id(31690914486181644690)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31691809846764043906)
,p_parameter_id=>wwv_flow_api.id(31527386555806993710)
,p_process_id=>wwv_flow_api.id(31691808652741043903)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31527386880419993711)
,p_ws_opers_id=>wwv_flow_api.id(31527385644191993708)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31539189379537292110)
,p_parameter_id=>wwv_flow_api.id(31527386880419993711)
,p_process_id=>wwv_flow_api.id(31539166103686292104)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31540690325916411112)
,p_parameter_id=>wwv_flow_api.id(31527386880419993711)
,p_process_id=>wwv_flow_api.id(31540687119845411108)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678745253776240126)
,p_parameter_id=>wwv_flow_api.id(31527386880419993711)
,p_process_id=>wwv_flow_api.id(31678743708427240118)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31679487859457659796)
,p_parameter_id=>wwv_flow_api.id(31527386880419993711)
,p_process_id=>wwv_flow_api.id(31679486282892659793)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681337230981821333)
,p_parameter_id=>wwv_flow_api.id(31527386880419993711)
,p_process_id=>wwv_flow_api.id(31681335617709821330)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31682144642166895871)
,p_parameter_id=>wwv_flow_api.id(31527386880419993711)
,p_process_id=>wwv_flow_api.id(31682143125247895869)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685147364868548253)
,p_parameter_id=>wwv_flow_api.id(31527386880419993711)
,p_process_id=>wwv_flow_api.id(31685145784245548250)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685242711389559417)
,p_parameter_id=>wwv_flow_api.id(31527386880419993711)
,p_process_id=>wwv_flow_api.id(31685241197783559415)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685425002538571388)
,p_parameter_id=>wwv_flow_api.id(31527386880419993711)
,p_process_id=>wwv_flow_api.id(31685423434809571385)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31686049052336960472)
,p_parameter_id=>wwv_flow_api.id(31527386880419993711)
,p_process_id=>wwv_flow_api.id(31686047459138960469)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31689891637175630380)
,p_parameter_id=>wwv_flow_api.id(31527386880419993711)
,p_process_id=>wwv_flow_api.id(31689890068546630378)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690916079415644692)
,p_parameter_id=>wwv_flow_api.id(31527386880419993711)
,p_process_id=>wwv_flow_api.id(31690914486181644690)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31691810233255043906)
,p_parameter_id=>wwv_flow_api.id(31527386880419993711)
,p_process_id=>wwv_flow_api.id(31691808652741043903)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31527387110979993711)
,p_ws_opers_id=>wwv_flow_api.id(31527385644191993708)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31539190106684292111)
,p_parameter_id=>wwv_flow_api.id(31527387110979993711)
,p_process_id=>wwv_flow_api.id(31539166103686292104)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31540691141931411113)
,p_parameter_id=>wwv_flow_api.id(31527387110979993711)
,p_process_id=>wwv_flow_api.id(31540687119845411108)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678745641918240126)
,p_parameter_id=>wwv_flow_api.id(31527387110979993711)
,p_process_id=>wwv_flow_api.id(31678743708427240118)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31679488294659659796)
,p_parameter_id=>wwv_flow_api.id(31527387110979993711)
,p_process_id=>wwv_flow_api.id(31679486282892659793)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681337687733821334)
,p_parameter_id=>wwv_flow_api.id(31527387110979993711)
,p_process_id=>wwv_flow_api.id(31681335617709821330)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31682145077962895872)
,p_parameter_id=>wwv_flow_api.id(31527387110979993711)
,p_process_id=>wwv_flow_api.id(31682143125247895869)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685147785645548253)
,p_parameter_id=>wwv_flow_api.id(31527387110979993711)
,p_process_id=>wwv_flow_api.id(31685145784245548250)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685243152565559418)
,p_parameter_id=>wwv_flow_api.id(31527387110979993711)
,p_process_id=>wwv_flow_api.id(31685241197783559415)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685425474911571388)
,p_parameter_id=>wwv_flow_api.id(31527387110979993711)
,p_process_id=>wwv_flow_api.id(31685423434809571385)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31686049406807960472)
,p_parameter_id=>wwv_flow_api.id(31527387110979993711)
,p_process_id=>wwv_flow_api.id(31686047459138960469)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31689892052566630380)
,p_parameter_id=>wwv_flow_api.id(31527387110979993711)
,p_process_id=>wwv_flow_api.id(31689890068546630378)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690916492464644694)
,p_parameter_id=>wwv_flow_api.id(31527387110979993711)
,p_process_id=>wwv_flow_api.id(31690914486181644690)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31691810630642043906)
,p_parameter_id=>wwv_flow_api.id(31527387110979993711)
,p_process_id=>wwv_flow_api.id(31691808652741043903)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31527387493940993711)
,p_ws_opers_id=>wwv_flow_api.id(31527385644191993708)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31539190935241292111)
,p_parameter_id=>wwv_flow_api.id(31527387493940993711)
,p_process_id=>wwv_flow_api.id(31539166103686292104)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31540691930512411114)
,p_parameter_id=>wwv_flow_api.id(31527387493940993711)
,p_process_id=>wwv_flow_api.id(31540687119845411108)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678746088262240127)
,p_parameter_id=>wwv_flow_api.id(31527387493940993711)
,p_process_id=>wwv_flow_api.id(31678743708427240118)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31679488624366659796)
,p_parameter_id=>wwv_flow_api.id(31527387493940993711)
,p_process_id=>wwv_flow_api.id(31679486282892659793)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681338069613821334)
,p_parameter_id=>wwv_flow_api.id(31527387493940993711)
,p_process_id=>wwv_flow_api.id(31681335617709821330)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31682145482447895872)
,p_parameter_id=>wwv_flow_api.id(31527387493940993711)
,p_process_id=>wwv_flow_api.id(31682143125247895869)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685148142329548254)
,p_parameter_id=>wwv_flow_api.id(31527387493940993711)
,p_process_id=>wwv_flow_api.id(31685145784245548250)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685243528299559418)
,p_parameter_id=>wwv_flow_api.id(31527387493940993711)
,p_process_id=>wwv_flow_api.id(31685241197783559415)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685425883512571389)
,p_parameter_id=>wwv_flow_api.id(31527387493940993711)
,p_process_id=>wwv_flow_api.id(31685423434809571385)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31686049881647960473)
,p_parameter_id=>wwv_flow_api.id(31527387493940993711)
,p_process_id=>wwv_flow_api.id(31686047459138960469)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31689892462990630381)
,p_parameter_id=>wwv_flow_api.id(31527387493940993711)
,p_process_id=>wwv_flow_api.id(31689890068546630378)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690916879322644694)
,p_parameter_id=>wwv_flow_api.id(31527387493940993711)
,p_process_id=>wwv_flow_api.id(31690914486181644690)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31691811042016043907)
,p_parameter_id=>wwv_flow_api.id(31527387493940993711)
,p_process_id=>wwv_flow_api.id(31691808652741043903)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31527387734328993712)
,p_ws_opers_id=>wwv_flow_api.id(31527385644191993708)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31539191768673292112)
,p_parameter_id=>wwv_flow_api.id(31527387734328993712)
,p_process_id=>wwv_flow_api.id(31539166103686292104)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31540692798620411115)
,p_parameter_id=>wwv_flow_api.id(31527387734328993712)
,p_process_id=>wwv_flow_api.id(31540687119845411108)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678746433827240128)
,p_parameter_id=>wwv_flow_api.id(31527387734328993712)
,p_process_id=>wwv_flow_api.id(31678743708427240118)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31679489041730659797)
,p_parameter_id=>wwv_flow_api.id(31527387734328993712)
,p_process_id=>wwv_flow_api.id(31679486282892659793)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681338456188821334)
,p_parameter_id=>wwv_flow_api.id(31527387734328993712)
,p_process_id=>wwv_flow_api.id(31681335617709821330)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31682145808638895872)
,p_parameter_id=>wwv_flow_api.id(31527387734328993712)
,p_process_id=>wwv_flow_api.id(31682143125247895869)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685148539541548255)
,p_parameter_id=>wwv_flow_api.id(31527387734328993712)
,p_process_id=>wwv_flow_api.id(31685145784245548250)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685243937743559418)
,p_parameter_id=>wwv_flow_api.id(31527387734328993712)
,p_process_id=>wwv_flow_api.id(31685241197783559415)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685426265562571389)
,p_parameter_id=>wwv_flow_api.id(31527387734328993712)
,p_process_id=>wwv_flow_api.id(31685423434809571385)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31686050244045960473)
,p_parameter_id=>wwv_flow_api.id(31527387734328993712)
,p_process_id=>wwv_flow_api.id(31686047459138960469)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31689892897946630381)
,p_parameter_id=>wwv_flow_api.id(31527387734328993712)
,p_process_id=>wwv_flow_api.id(31689890068546630378)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690917277906644694)
,p_parameter_id=>wwv_flow_api.id(31527387734328993712)
,p_process_id=>wwv_flow_api.id(31690914486181644690)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31691811409110043907)
,p_parameter_id=>wwv_flow_api.id(31527387734328993712)
,p_process_id=>wwv_flow_api.id(31691808652741043903)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31527418085706993712)
,p_ws_opers_id=>wwv_flow_api.id(31527385644191993708)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31539192516930292112)
,p_parameter_id=>wwv_flow_api.id(31527418085706993712)
,p_process_id=>wwv_flow_api.id(31539166103686292104)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31540693567193411115)
,p_parameter_id=>wwv_flow_api.id(31527418085706993712)
,p_process_id=>wwv_flow_api.id(31540687119845411108)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678746848913240128)
,p_parameter_id=>wwv_flow_api.id(31527418085706993712)
,p_process_id=>wwv_flow_api.id(31678743708427240118)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31679489456935659797)
,p_parameter_id=>wwv_flow_api.id(31527418085706993712)
,p_process_id=>wwv_flow_api.id(31679486282892659793)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681338853847821335)
,p_parameter_id=>wwv_flow_api.id(31527418085706993712)
,p_process_id=>wwv_flow_api.id(31681335617709821330)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31682146274363895873)
,p_parameter_id=>wwv_flow_api.id(31527418085706993712)
,p_process_id=>wwv_flow_api.id(31682143125247895869)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685148970509548255)
,p_parameter_id=>wwv_flow_api.id(31527418085706993712)
,p_process_id=>wwv_flow_api.id(31685145784245548250)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685244323893559419)
,p_parameter_id=>wwv_flow_api.id(31527418085706993712)
,p_process_id=>wwv_flow_api.id(31685241197783559415)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685426614463571390)
,p_parameter_id=>wwv_flow_api.id(31527418085706993712)
,p_process_id=>wwv_flow_api.id(31685423434809571385)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31686050629595960473)
,p_parameter_id=>wwv_flow_api.id(31527418085706993712)
,p_process_id=>wwv_flow_api.id(31686047459138960469)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31689893247520630381)
,p_parameter_id=>wwv_flow_api.id(31527418085706993712)
,p_process_id=>wwv_flow_api.id(31689890068546630378)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690917661391644695)
,p_parameter_id=>wwv_flow_api.id(31527418085706993712)
,p_process_id=>wwv_flow_api.id(31690914486181644690)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31691811870173043907)
,p_parameter_id=>wwv_flow_api.id(31527418085706993712)
,p_process_id=>wwv_flow_api.id(31691808652741043903)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31527418379796993713)
,p_ws_opers_id=>wwv_flow_api.id(31527385644191993708)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31539193350813292113)
,p_parameter_id=>wwv_flow_api.id(31527418379796993713)
,p_process_id=>wwv_flow_api.id(31539166103686292104)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31540694377242411116)
,p_parameter_id=>wwv_flow_api.id(31527418379796993713)
,p_process_id=>wwv_flow_api.id(31540687119845411108)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678747237640240128)
,p_parameter_id=>wwv_flow_api.id(31527418379796993713)
,p_process_id=>wwv_flow_api.id(31678743708427240118)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31679489861326659797)
,p_parameter_id=>wwv_flow_api.id(31527418379796993713)
,p_process_id=>wwv_flow_api.id(31679486282892659793)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681339200375821335)
,p_parameter_id=>wwv_flow_api.id(31527418379796993713)
,p_process_id=>wwv_flow_api.id(31681335617709821330)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31682146678954895873)
,p_parameter_id=>wwv_flow_api.id(31527418379796993713)
,p_process_id=>wwv_flow_api.id(31682143125247895869)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685149302934548256)
,p_parameter_id=>wwv_flow_api.id(31527418379796993713)
,p_process_id=>wwv_flow_api.id(31685145784245548250)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685244701578559419)
,p_parameter_id=>wwv_flow_api.id(31527418379796993713)
,p_process_id=>wwv_flow_api.id(31685241197783559415)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685427000982571390)
,p_parameter_id=>wwv_flow_api.id(31527418379796993713)
,p_process_id=>wwv_flow_api.id(31685423434809571385)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31686051002649960473)
,p_parameter_id=>wwv_flow_api.id(31527418379796993713)
,p_process_id=>wwv_flow_api.id(31686047459138960469)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31689893687117630381)
,p_parameter_id=>wwv_flow_api.id(31527418379796993713)
,p_process_id=>wwv_flow_api.id(31689890068546630378)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690918028694644695)
,p_parameter_id=>wwv_flow_api.id(31527418379796993713)
,p_process_id=>wwv_flow_api.id(31690914486181644690)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31691812280876043907)
,p_parameter_id=>wwv_flow_api.id(31527418379796993713)
,p_process_id=>wwv_flow_api.id(31691808652741043903)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31527418680404993713)
,p_ws_opers_id=>wwv_flow_api.id(31527385644191993708)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31539194170851292115)
,p_parameter_id=>wwv_flow_api.id(31527418680404993713)
,p_process_id=>wwv_flow_api.id(31539166103686292104)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31540695110726411117)
,p_parameter_id=>wwv_flow_api.id(31527418680404993713)
,p_process_id=>wwv_flow_api.id(31540687119845411108)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678747671596240128)
,p_parameter_id=>wwv_flow_api.id(31527418680404993713)
,p_process_id=>wwv_flow_api.id(31678743708427240118)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31679490201820659797)
,p_parameter_id=>wwv_flow_api.id(31527418680404993713)
,p_process_id=>wwv_flow_api.id(31679486282892659793)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_LASTNAME'
);
end;
/
begin
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681339646198821335)
,p_parameter_id=>wwv_flow_api.id(31527418680404993713)
,p_process_id=>wwv_flow_api.id(31681335617709821330)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31682147078749895873)
,p_parameter_id=>wwv_flow_api.id(31527418680404993713)
,p_process_id=>wwv_flow_api.id(31682143125247895869)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685149700820548256)
,p_parameter_id=>wwv_flow_api.id(31527418680404993713)
,p_process_id=>wwv_flow_api.id(31685145784245548250)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685245144575559419)
,p_parameter_id=>wwv_flow_api.id(31527418680404993713)
,p_process_id=>wwv_flow_api.id(31685241197783559415)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685427473115571390)
,p_parameter_id=>wwv_flow_api.id(31527418680404993713)
,p_process_id=>wwv_flow_api.id(31685423434809571385)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31686051405288960474)
,p_parameter_id=>wwv_flow_api.id(31527418680404993713)
,p_process_id=>wwv_flow_api.id(31686047459138960469)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31689894047565630382)
,p_parameter_id=>wwv_flow_api.id(31527418680404993713)
,p_process_id=>wwv_flow_api.id(31689890068546630378)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690918479422644696)
,p_parameter_id=>wwv_flow_api.id(31527418680404993713)
,p_process_id=>wwv_flow_api.id(31690914486181644690)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31691812636736043908)
,p_parameter_id=>wwv_flow_api.id(31527418680404993713)
,p_process_id=>wwv_flow_api.id(31691808652741043903)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31527418931426993713)
,p_ws_opers_id=>wwv_flow_api.id(31527385644191993708)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31539194911903292116)
,p_parameter_id=>wwv_flow_api.id(31527418931426993713)
,p_process_id=>wwv_flow_api.id(31539166103686292104)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31540695937134411117)
,p_parameter_id=>wwv_flow_api.id(31527418931426993713)
,p_process_id=>wwv_flow_api.id(31540687119845411108)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678748071503240129)
,p_parameter_id=>wwv_flow_api.id(31527418931426993713)
,p_process_id=>wwv_flow_api.id(31678743708427240118)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31679490638982659798)
,p_parameter_id=>wwv_flow_api.id(31527418931426993713)
,p_process_id=>wwv_flow_api.id(31679486282892659793)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681340072929821335)
,p_parameter_id=>wwv_flow_api.id(31527418931426993713)
,p_process_id=>wwv_flow_api.id(31681335617709821330)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31682147477456895874)
,p_parameter_id=>wwv_flow_api.id(31527418931426993713)
,p_process_id=>wwv_flow_api.id(31682143125247895869)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685150146441548256)
,p_parameter_id=>wwv_flow_api.id(31527418931426993713)
,p_process_id=>wwv_flow_api.id(31685145784245548250)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685245782785559420)
,p_parameter_id=>wwv_flow_api.id(31527418931426993713)
,p_process_id=>wwv_flow_api.id(31685241197783559415)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685427892532571391)
,p_parameter_id=>wwv_flow_api.id(31527418931426993713)
,p_process_id=>wwv_flow_api.id(31685423434809571385)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31686051814627960474)
,p_parameter_id=>wwv_flow_api.id(31527418931426993713)
,p_process_id=>wwv_flow_api.id(31686047459138960469)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31689894455511630383)
,p_parameter_id=>wwv_flow_api.id(31527418931426993713)
,p_process_id=>wwv_flow_api.id(31689890068546630378)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690918842940644696)
,p_parameter_id=>wwv_flow_api.id(31527418931426993713)
,p_process_id=>wwv_flow_api.id(31690914486181644690)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31691813033807043908)
,p_parameter_id=>wwv_flow_api.id(31527418931426993713)
,p_process_id=>wwv_flow_api.id(31691808652741043903)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31527419214973993713)
,p_ws_opers_id=>wwv_flow_api.id(31527385644191993708)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31539195757478292116)
,p_parameter_id=>wwv_flow_api.id(31527419214973993713)
,p_process_id=>wwv_flow_api.id(31539166103686292104)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31540696701394411118)
,p_parameter_id=>wwv_flow_api.id(31527419214973993713)
,p_process_id=>wwv_flow_api.id(31540687119845411108)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678748442331240129)
,p_parameter_id=>wwv_flow_api.id(31527419214973993713)
,p_process_id=>wwv_flow_api.id(31678743708427240118)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31679491064941659798)
,p_parameter_id=>wwv_flow_api.id(31527419214973993713)
,p_process_id=>wwv_flow_api.id(31679486282892659793)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681340450188821336)
,p_parameter_id=>wwv_flow_api.id(31527419214973993713)
,p_process_id=>wwv_flow_api.id(31681335617709821330)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31682147849311895874)
,p_parameter_id=>wwv_flow_api.id(31527419214973993713)
,p_process_id=>wwv_flow_api.id(31682143125247895869)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685150530266548257)
,p_parameter_id=>wwv_flow_api.id(31527419214973993713)
,p_process_id=>wwv_flow_api.id(31685145784245548250)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685246150248559420)
,p_parameter_id=>wwv_flow_api.id(31527419214973993713)
,p_process_id=>wwv_flow_api.id(31685241197783559415)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685428268515571391)
,p_parameter_id=>wwv_flow_api.id(31527419214973993713)
,p_process_id=>wwv_flow_api.id(31685423434809571385)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31686052226245960474)
,p_parameter_id=>wwv_flow_api.id(31527419214973993713)
,p_process_id=>wwv_flow_api.id(31686047459138960469)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31689894857830630384)
,p_parameter_id=>wwv_flow_api.id(31527419214973993713)
,p_process_id=>wwv_flow_api.id(31689890068546630378)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690919279239644696)
,p_parameter_id=>wwv_flow_api.id(31527419214973993713)
,p_process_id=>wwv_flow_api.id(31690914486181644690)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31691813459678043908)
,p_parameter_id=>wwv_flow_api.id(31527419214973993713)
,p_process_id=>wwv_flow_api.id(31691808652741043903)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31527419575188993714)
,p_ws_opers_id=>wwv_flow_api.id(31527385644191993708)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31539198948917292119)
,p_parameter_id=>wwv_flow_api.id(31527419575188993714)
,p_process_id=>wwv_flow_api.id(31539166103686292104)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31540699970729411121)
,p_parameter_id=>wwv_flow_api.id(31527419575188993714)
,p_process_id=>wwv_flow_api.id(31540687119845411108)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678750028835240130)
,p_parameter_id=>wwv_flow_api.id(31527419575188993714)
,p_process_id=>wwv_flow_api.id(31678743708427240118)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31679492698747659799)
,p_parameter_id=>wwv_flow_api.id(31527419575188993714)
,p_process_id=>wwv_flow_api.id(31679486282892659793)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681342042648821337)
,p_parameter_id=>wwv_flow_api.id(31527419575188993714)
,p_process_id=>wwv_flow_api.id(31681335617709821330)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31682149494817895876)
,p_parameter_id=>wwv_flow_api.id(31527419575188993714)
,p_process_id=>wwv_flow_api.id(31682143125247895869)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685152170498548258)
,p_parameter_id=>wwv_flow_api.id(31527419575188993714)
,p_process_id=>wwv_flow_api.id(31685145784245548250)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685247786719559421)
,p_parameter_id=>wwv_flow_api.id(31527419575188993714)
,p_process_id=>wwv_flow_api.id(31685241197783559415)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685429871143571392)
,p_parameter_id=>wwv_flow_api.id(31527419575188993714)
,p_process_id=>wwv_flow_api.id(31685423434809571385)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31686053811674960476)
,p_parameter_id=>wwv_flow_api.id(31527419575188993714)
,p_process_id=>wwv_flow_api.id(31686047459138960469)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31689896467543630385)
,p_parameter_id=>wwv_flow_api.id(31527419575188993714)
,p_process_id=>wwv_flow_api.id(31689890068546630378)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690920857238644697)
,p_parameter_id=>wwv_flow_api.id(31527419575188993714)
,p_process_id=>wwv_flow_api.id(31690914486181644690)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31691815099641043910)
,p_parameter_id=>wwv_flow_api.id(31527419575188993714)
,p_process_id=>wwv_flow_api.id(31691808652741043903)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31527419819961993714)
,p_ws_opers_id=>wwv_flow_api.id(31527385644191993708)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31528115666849026097)
,p_ws_opers_id=>wwv_flow_api.id(31527385644191993708)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31539196527184292117)
,p_parameter_id=>wwv_flow_api.id(31528115666849026097)
,p_process_id=>wwv_flow_api.id(31539166103686292104)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31540697513427411119)
,p_parameter_id=>wwv_flow_api.id(31528115666849026097)
,p_process_id=>wwv_flow_api.id(31540687119845411108)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678748894878240129)
,p_parameter_id=>wwv_flow_api.id(31528115666849026097)
,p_process_id=>wwv_flow_api.id(31678743708427240118)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31679491459645659798)
,p_parameter_id=>wwv_flow_api.id(31528115666849026097)
,p_process_id=>wwv_flow_api.id(31679486282892659793)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681340861428821336)
,p_parameter_id=>wwv_flow_api.id(31528115666849026097)
,p_process_id=>wwv_flow_api.id(31681335617709821330)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31682148226103895875)
,p_parameter_id=>wwv_flow_api.id(31528115666849026097)
,p_process_id=>wwv_flow_api.id(31682143125247895869)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685150985722548257)
,p_parameter_id=>wwv_flow_api.id(31528115666849026097)
,p_process_id=>wwv_flow_api.id(31685145784245548250)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685246543810559420)
,p_parameter_id=>wwv_flow_api.id(31528115666849026097)
,p_process_id=>wwv_flow_api.id(31685241197783559415)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685428607806571391)
,p_parameter_id=>wwv_flow_api.id(31528115666849026097)
,p_process_id=>wwv_flow_api.id(31685423434809571385)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31686052605917960475)
,p_parameter_id=>wwv_flow_api.id(31528115666849026097)
,p_process_id=>wwv_flow_api.id(31686047459138960469)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31689895243593630384)
,p_parameter_id=>wwv_flow_api.id(31528115666849026097)
,p_process_id=>wwv_flow_api.id(31689890068546630378)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690919686583644696)
,p_parameter_id=>wwv_flow_api.id(31528115666849026097)
,p_process_id=>wwv_flow_api.id(31690914486181644690)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31691813855522043909)
,p_parameter_id=>wwv_flow_api.id(31528115666849026097)
,p_process_id=>wwv_flow_api.id(31691808652741043903)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31528115930980026097)
,p_ws_opers_id=>wwv_flow_api.id(31527385644191993708)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31539197303122292118)
,p_parameter_id=>wwv_flow_api.id(31528115930980026097)
,p_process_id=>wwv_flow_api.id(31539166103686292104)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31540698362684411120)
,p_parameter_id=>wwv_flow_api.id(31528115930980026097)
,p_process_id=>wwv_flow_api.id(31540687119845411108)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678749240627240130)
,p_parameter_id=>wwv_flow_api.id(31528115930980026097)
,p_process_id=>wwv_flow_api.id(31678743708427240118)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31679491819991659798)
,p_parameter_id=>wwv_flow_api.id(31528115930980026097)
,p_process_id=>wwv_flow_api.id(31679486282892659793)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681341299143821336)
,p_parameter_id=>wwv_flow_api.id(31528115930980026097)
,p_process_id=>wwv_flow_api.id(31681335617709821330)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31682148643610895875)
,p_parameter_id=>wwv_flow_api.id(31528115930980026097)
,p_process_id=>wwv_flow_api.id(31682143125247895869)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685151398851548257)
,p_parameter_id=>wwv_flow_api.id(31528115930980026097)
,p_process_id=>wwv_flow_api.id(31685145784245548250)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685246923797559421)
,p_parameter_id=>wwv_flow_api.id(31528115930980026097)
,p_process_id=>wwv_flow_api.id(31685241197783559415)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685429073572571391)
,p_parameter_id=>wwv_flow_api.id(31528115930980026097)
,p_process_id=>wwv_flow_api.id(31685423434809571385)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31686053029803960475)
,p_parameter_id=>wwv_flow_api.id(31528115930980026097)
,p_process_id=>wwv_flow_api.id(31686047459138960469)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31689895612251630384)
,p_parameter_id=>wwv_flow_api.id(31528115930980026097)
,p_process_id=>wwv_flow_api.id(31689890068546630378)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690920049567644697)
,p_parameter_id=>wwv_flow_api.id(31528115930980026097)
,p_process_id=>wwv_flow_api.id(31690914486181644690)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31691814270235043909)
,p_parameter_id=>wwv_flow_api.id(31528115930980026097)
,p_process_id=>wwv_flow_api.id(31691808652741043903)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31537426100302580861)
,p_ws_opers_id=>wwv_flow_api.id(31527385644191993708)
,p_name=>'query2'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31539199760869292120)
,p_parameter_id=>wwv_flow_api.id(31537426100302580861)
,p_process_id=>wwv_flow_api.id(31539166103686292104)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31540700799992411122)
,p_parameter_id=>wwv_flow_api.id(31537426100302580861)
,p_process_id=>wwv_flow_api.id(31540687119845411108)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678750400258240130)
,p_parameter_id=>wwv_flow_api.id(31537426100302580861)
,p_process_id=>wwv_flow_api.id(31678743708427240118)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31679493068673659799)
,p_parameter_id=>wwv_flow_api.id(31537426100302580861)
,p_process_id=>wwv_flow_api.id(31679486282892659793)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681342485299821338)
,p_parameter_id=>wwv_flow_api.id(31537426100302580861)
,p_process_id=>wwv_flow_api.id(31681335617709821330)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31682149858836895876)
,p_parameter_id=>wwv_flow_api.id(31537426100302580861)
,p_process_id=>wwv_flow_api.id(31682143125247895869)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685152581643548258)
,p_parameter_id=>wwv_flow_api.id(31537426100302580861)
,p_process_id=>wwv_flow_api.id(31685145784245548250)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685248190407559421)
,p_parameter_id=>wwv_flow_api.id(31537426100302580861)
,p_process_id=>wwv_flow_api.id(31685241197783559415)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685430281887571392)
,p_parameter_id=>wwv_flow_api.id(31537426100302580861)
,p_process_id=>wwv_flow_api.id(31685423434809571385)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31686054297400960476)
,p_parameter_id=>wwv_flow_api.id(31537426100302580861)
,p_process_id=>wwv_flow_api.id(31686047459138960469)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31689896898101630385)
,p_parameter_id=>wwv_flow_api.id(31537426100302580861)
,p_process_id=>wwv_flow_api.id(31689890068546630378)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690921262961644698)
,p_parameter_id=>wwv_flow_api.id(31537426100302580861)
,p_process_id=>wwv_flow_api.id(31690914486181644690)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31691815462205043910)
,p_parameter_id=>wwv_flow_api.id(31537426100302580861)
,p_process_id=>wwv_flow_api.id(31691808652741043903)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_QUERY2'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31538922780311277428)
,p_ws_opers_id=>wwv_flow_api.id(31527385644191993708)
,p_name=>'spouse'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31539198162054292118)
,p_parameter_id=>wwv_flow_api.id(31538922780311277428)
,p_process_id=>wwv_flow_api.id(31539166103686292104)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31540699132826411120)
,p_parameter_id=>wwv_flow_api.id(31538922780311277428)
,p_process_id=>wwv_flow_api.id(31540687119845411108)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31678749605528240130)
,p_parameter_id=>wwv_flow_api.id(31538922780311277428)
,p_process_id=>wwv_flow_api.id(31678743708427240118)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31679492212761659799)
,p_parameter_id=>wwv_flow_api.id(31538922780311277428)
,p_process_id=>wwv_flow_api.id(31679486282892659793)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31681341649526821336)
,p_parameter_id=>wwv_flow_api.id(31538922780311277428)
,p_process_id=>wwv_flow_api.id(31681335617709821330)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31682149029079895875)
,p_parameter_id=>wwv_flow_api.id(31538922780311277428)
,p_process_id=>wwv_flow_api.id(31682143125247895869)
,p_map_type=>'ITEM'
,p_parm_value=>'P15_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685151788700548258)
,p_parameter_id=>wwv_flow_api.id(31538922780311277428)
,p_process_id=>wwv_flow_api.id(31685145784245548250)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685247359027559421)
,p_parameter_id=>wwv_flow_api.id(31538922780311277428)
,p_process_id=>wwv_flow_api.id(31685241197783559415)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31685429451095571392)
,p_parameter_id=>wwv_flow_api.id(31538922780311277428)
,p_process_id=>wwv_flow_api.id(31685423434809571385)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31686053430302960476)
,p_parameter_id=>wwv_flow_api.id(31538922780311277428)
,p_process_id=>wwv_flow_api.id(31686047459138960469)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31689896064616630385)
,p_parameter_id=>wwv_flow_api.id(31538922780311277428)
,p_process_id=>wwv_flow_api.id(31689890068546630378)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31690920403830644697)
,p_parameter_id=>wwv_flow_api.id(31538922780311277428)
,p_process_id=>wwv_flow_api.id(31690914486181644690)
,p_map_type=>'ITEM'
,p_parm_value=>'P21_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31691814643189043909)
,p_parameter_id=>wwv_flow_api.id(31538922780311277428)
,p_process_id=>wwv_flow_api.id(31691808652741043903)
,p_map_type=>'ITEM'
,p_parm_value=>'P22_SPOUSE'
);
end;
/
prompt --application/shared_components/logic/webservices/previous_employee
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31732205682464590538)
,p_name=>'Previous Employee'
,p_url=>'aevum.cs.utexas.edu:6020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31732205844812590538)
,p_ws_id=>wwv_flow_api.id(31732205682464590538)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732206171882590539)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735187763721589203)
,p_parameter_id=>wwv_flow_api.id(31732206171882590539)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827382562153652369)
,p_parameter_id=>wwv_flow_api.id(31732206171882590539)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732206422541590539)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735218503491589204)
,p_parameter_id=>wwv_flow_api.id(31732206422541590539)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827382940890652369)
,p_parameter_id=>wwv_flow_api.id(31732206422541590539)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732206765119590540)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735219391434589205)
,p_parameter_id=>wwv_flow_api.id(31732206765119590540)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827383396660652370)
,p_parameter_id=>wwv_flow_api.id(31732206765119590540)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732207060322590540)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735220100323589207)
,p_parameter_id=>wwv_flow_api.id(31732207060322590540)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827383777639652370)
,p_parameter_id=>wwv_flow_api.id(31732207060322590540)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732207350065590540)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735220936318589208)
,p_parameter_id=>wwv_flow_api.id(31732207350065590540)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827384158925652370)
,p_parameter_id=>wwv_flow_api.id(31732207350065590540)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732207655161590540)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735221703711589209)
,p_parameter_id=>wwv_flow_api.id(31732207655161590540)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827384567620652371)
,p_parameter_id=>wwv_flow_api.id(31732207655161590540)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732207970782590541)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735222521605589209)
,p_parameter_id=>wwv_flow_api.id(31732207970782590541)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827384952780652372)
,p_parameter_id=>wwv_flow_api.id(31732207970782590541)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732208265480590541)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735223363138589210)
,p_parameter_id=>wwv_flow_api.id(31732208265480590541)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827385302301652374)
,p_parameter_id=>wwv_flow_api.id(31732208265480590541)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732208595438590541)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735224183490589211)
,p_parameter_id=>wwv_flow_api.id(31732208595438590541)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827385787586652374)
,p_parameter_id=>wwv_flow_api.id(31732208595438590541)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732208882155590542)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735224991405589211)
,p_parameter_id=>wwv_flow_api.id(31732208882155590542)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827386128548652374)
,p_parameter_id=>wwv_flow_api.id(31732208882155590542)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732209106312590542)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735225796123589212)
,p_parameter_id=>wwv_flow_api.id(31732209106312590542)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827386528243652375)
,p_parameter_id=>wwv_flow_api.id(31732209106312590542)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732209452617590542)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735226500343589213)
,p_parameter_id=>wwv_flow_api.id(31732209452617590542)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827386941989652375)
,p_parameter_id=>wwv_flow_api.id(31732209452617590542)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732209735716590542)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735227368166589214)
,p_parameter_id=>wwv_flow_api.id(31732209735716590542)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827387324144652375)
,p_parameter_id=>wwv_flow_api.id(31732209735716590542)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732210067224590542)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735228191585589214)
,p_parameter_id=>wwv_flow_api.id(31732210067224590542)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827387717009652376)
,p_parameter_id=>wwv_flow_api.id(31732210067224590542)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732210390361590543)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'isfired'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735228904382589215)
,p_parameter_id=>wwv_flow_api.id(31732210390361590543)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_ISFIRED'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827388182548652376)
,p_parameter_id=>wwv_flow_api.id(31732210390361590543)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_ISFIRED'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732210613580590543)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735229750652589216)
,p_parameter_id=>wwv_flow_api.id(31732210613580590543)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827388586822652376)
,p_parameter_id=>wwv_flow_api.id(31732210613580590543)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732210911951590543)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735231343368589217)
,p_parameter_id=>wwv_flow_api.id(31732210911951590543)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827389324434652377)
,p_parameter_id=>wwv_flow_api.id(31732210911951590543)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_QUERY2'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732211232320590543)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'query2'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735232163250589217)
,p_parameter_id=>wwv_flow_api.id(31732211232320590543)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827389766294652377)
,p_parameter_id=>wwv_flow_api.id(31732211232320590543)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732211546147590544)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31732752660760269548)
,p_ws_opers_id=>wwv_flow_api.id(31732205844812590538)
,p_name=>'spouse'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31735230540783589216)
,p_parameter_id=>wwv_flow_api.id(31732752660760269548)
,p_process_id=>wwv_flow_api.id(31735186951264589199)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31827388934872652377)
,p_parameter_id=>wwv_flow_api.id(31732752660760269548)
,p_process_id=>wwv_flow_api.id(31827382210942652368)
,p_map_type=>'ITEM'
,p_parm_value=>'P23_SPOUSE'
);
end;
/
prompt --application/shared_components/logic/webservices/employee
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31734062167916793523)
,p_name=>'Employee'
,p_url=>'aevum.cs.utexas.edu:6020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31734062356021793525)
,p_ws_id=>wwv_flow_api.id(31734062167916793523)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734062660514793527)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736302920891048550)
,p_parameter_id=>wwv_flow_api.id(31734062660514793527)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829031609335760379)
,p_parameter_id=>wwv_flow_api.id(31734062660514793527)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829047418780761907)
,p_parameter_id=>wwv_flow_api.id(31734062660514793527)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734062978545793528)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736303717090048550)
,p_parameter_id=>wwv_flow_api.id(31734062978545793528)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829032042299760379)
,p_parameter_id=>wwv_flow_api.id(31734062978545793528)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829047859810761907)
,p_parameter_id=>wwv_flow_api.id(31734062978545793528)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734063207301793528)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736304585431048551)
,p_parameter_id=>wwv_flow_api.id(31734063207301793528)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829032491542760380)
,p_parameter_id=>wwv_flow_api.id(31734063207301793528)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829048268419761907)
,p_parameter_id=>wwv_flow_api.id(31734063207301793528)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734063522918793528)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736305307740048552)
,p_parameter_id=>wwv_flow_api.id(31734063522918793528)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829032842813760380)
,p_parameter_id=>wwv_flow_api.id(31734063522918793528)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829048643579761907)
,p_parameter_id=>wwv_flow_api.id(31734063522918793528)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734063857277793528)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736306107950048553)
,p_parameter_id=>wwv_flow_api.id(31734063857277793528)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829033219578760380)
,p_parameter_id=>wwv_flow_api.id(31734063857277793528)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829049099138761908)
,p_parameter_id=>wwv_flow_api.id(31734063857277793528)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734064195759793529)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736306946394048554)
,p_parameter_id=>wwv_flow_api.id(31734064195759793529)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829033658608760381)
,p_parameter_id=>wwv_flow_api.id(31734064195759793529)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829049408741761908)
,p_parameter_id=>wwv_flow_api.id(31734064195759793529)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734064482771793529)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736307790840048554)
,p_parameter_id=>wwv_flow_api.id(31734064482771793529)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829034018468760381)
,p_parameter_id=>wwv_flow_api.id(31734064482771793529)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829049865259761908)
,p_parameter_id=>wwv_flow_api.id(31734064482771793529)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734064700343793529)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736308542176048555)
,p_parameter_id=>wwv_flow_api.id(31734064700343793529)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829034496388760381)
,p_parameter_id=>wwv_flow_api.id(31734064700343793529)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829050250657761909)
,p_parameter_id=>wwv_flow_api.id(31734064700343793529)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734065091343793530)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736309443154048556)
,p_parameter_id=>wwv_flow_api.id(31734065091343793530)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829034872958760381)
,p_parameter_id=>wwv_flow_api.id(31734065091343793530)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829050686729761909)
,p_parameter_id=>wwv_flow_api.id(31734065091343793530)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734065303571793530)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736310270913048557)
,p_parameter_id=>wwv_flow_api.id(31734065303571793530)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829035215083760382)
,p_parameter_id=>wwv_flow_api.id(31734065303571793530)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829051007806761909)
,p_parameter_id=>wwv_flow_api.id(31734065303571793530)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734065625006793530)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736311089657048558)
,p_parameter_id=>wwv_flow_api.id(31734065625006793530)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829035651508760382)
,p_parameter_id=>wwv_flow_api.id(31734065625006793530)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829051459671761909)
,p_parameter_id=>wwv_flow_api.id(31734065625006793530)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734065906243793530)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736311939305048559)
,p_parameter_id=>wwv_flow_api.id(31734065906243793530)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829036010263760382)
,p_parameter_id=>wwv_flow_api.id(31734065906243793530)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829051858187761910)
,p_parameter_id=>wwv_flow_api.id(31734065906243793530)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734066211675793530)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736312753932048559)
,p_parameter_id=>wwv_flow_api.id(31734066211675793530)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829036455902760383)
,p_parameter_id=>wwv_flow_api.id(31734066211675793530)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829052275247761910)
,p_parameter_id=>wwv_flow_api.id(31734066211675793530)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734066583209793531)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736313566156048560)
,p_parameter_id=>wwv_flow_api.id(31734066583209793531)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829036815694760384)
,p_parameter_id=>wwv_flow_api.id(31734066583209793531)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829052682854761910)
,p_parameter_id=>wwv_flow_api.id(31734066583209793531)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734066819230793531)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'spouse'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736314334790048561)
,p_parameter_id=>wwv_flow_api.id(31734066819230793531)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829037226767760384)
,p_parameter_id=>wwv_flow_api.id(31734066819230793531)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829053029905761911)
,p_parameter_id=>wwv_flow_api.id(31734066819230793531)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_SPOUSE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734067184390793531)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736315163510048562)
,p_parameter_id=>wwv_flow_api.id(31734067184390793531)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829037698295760385)
,p_parameter_id=>wwv_flow_api.id(31734067184390793531)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829053434994761911)
,p_parameter_id=>wwv_flow_api.id(31734067184390793531)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734067447990793531)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736315961483048563)
,p_parameter_id=>wwv_flow_api.id(31734067447990793531)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829038024477760385)
,p_parameter_id=>wwv_flow_api.id(31734067447990793531)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829053804718761911)
,p_parameter_id=>wwv_flow_api.id(31734067447990793531)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734067715875793532)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736316753116048563)
,p_parameter_id=>wwv_flow_api.id(31734067715875793532)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829038406799760385)
,p_parameter_id=>wwv_flow_api.id(31734067715875793532)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829054232045761912)
,p_parameter_id=>wwv_flow_api.id(31734067715875793532)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734078004666793532)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'manager'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736317501422048564)
,p_parameter_id=>wwv_flow_api.id(31734078004666793532)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829038823605760386)
,p_parameter_id=>wwv_flow_api.id(31734078004666793532)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829054601439761912)
,p_parameter_id=>wwv_flow_api.id(31734078004666793532)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_MANAGER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734078379919793532)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736318318094048565)
,p_parameter_id=>wwv_flow_api.id(31734078379919793532)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829039226237760387)
,p_parameter_id=>wwv_flow_api.id(31734078379919793532)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829055077619761912)
,p_parameter_id=>wwv_flow_api.id(31734078379919793532)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_QUERY3'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734078613544793533)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'query2'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736319110575048565)
,p_parameter_id=>wwv_flow_api.id(31734078613544793533)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829039600371760387)
,p_parameter_id=>wwv_flow_api.id(31734078613544793533)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829055418937761912)
,p_parameter_id=>wwv_flow_api.id(31734078613544793533)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_QUERY2'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734078950977793533)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'query3'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31736319967782048567)
,p_parameter_id=>wwv_flow_api.id(31734078950977793533)
,p_process_id=>wwv_flow_api.id(31736302159347048547)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829040073942760387)
,p_parameter_id=>wwv_flow_api.id(31734078950977793533)
,p_process_id=>wwv_flow_api.id(31829031362025760377)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31829055849154761913)
,p_parameter_id=>wwv_flow_api.id(31734078950977793533)
,p_process_id=>wwv_flow_api.id(31829047132341761905)
,p_map_type=>'ITEM'
,p_parm_value=>'P24_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734079281338793533)
,p_ws_opers_id=>wwv_flow_api.id(31734062356021793525)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/manager
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31734136114714436409)
,p_name=>'Manager'
,p_url=>'aevum.cs.utexas.edu:6020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31734136345879436409)
,p_ws_id=>wwv_flow_api.id(31734136114714436409)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734136659759436410)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737066710781768011)
,p_parameter_id=>wwv_flow_api.id(31734136659759436410)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840139900612082938)
,p_parameter_id=>wwv_flow_api.id(31734136659759436410)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840227702465459683)
,p_parameter_id=>wwv_flow_api.id(31734136659759436410)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840230428795085890)
,p_parameter_id=>wwv_flow_api.id(31734136659759436410)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734136927563436410)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737067572366768012)
,p_parameter_id=>wwv_flow_api.id(31734136927563436410)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840140307608082938)
,p_parameter_id=>wwv_flow_api.id(31734136927563436410)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840230844734085891)
,p_parameter_id=>wwv_flow_api.id(31734136927563436410)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840238111002459684)
,p_parameter_id=>wwv_flow_api.id(31734136927563436410)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734137282605436411)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737098375517768018)
,p_parameter_id=>wwv_flow_api.id(31734137282605436411)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840140769346082940)
,p_parameter_id=>wwv_flow_api.id(31734137282605436411)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840231294281085891)
,p_parameter_id=>wwv_flow_api.id(31734137282605436411)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840238583530459685)
,p_parameter_id=>wwv_flow_api.id(31734137282605436411)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734137550922436411)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737099123093768018)
,p_parameter_id=>wwv_flow_api.id(31734137550922436411)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840141128986082942)
,p_parameter_id=>wwv_flow_api.id(31734137550922436411)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840231618596085892)
,p_parameter_id=>wwv_flow_api.id(31734137550922436411)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840238924912459685)
,p_parameter_id=>wwv_flow_api.id(31734137550922436411)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734137879537436411)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737099923727768019)
,p_parameter_id=>wwv_flow_api.id(31734137879537436411)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840141509458082942)
,p_parameter_id=>wwv_flow_api.id(31734137879537436411)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840232083621085892)
,p_parameter_id=>wwv_flow_api.id(31734137879537436411)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840239377731459685)
,p_parameter_id=>wwv_flow_api.id(31734137879537436411)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734178114536436412)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737100725234768020)
,p_parameter_id=>wwv_flow_api.id(31734178114536436412)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840141925848082942)
,p_parameter_id=>wwv_flow_api.id(31734178114536436412)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840232462256085893)
,p_parameter_id=>wwv_flow_api.id(31734178114536436412)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840239736282459685)
,p_parameter_id=>wwv_flow_api.id(31734178114536436412)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734178485723436413)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737101529390768021)
,p_parameter_id=>wwv_flow_api.id(31734178485723436413)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840142390694082942)
,p_parameter_id=>wwv_flow_api.id(31734178485723436413)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840232870021085893)
,p_parameter_id=>wwv_flow_api.id(31734178485723436413)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840240129181459686)
,p_parameter_id=>wwv_flow_api.id(31734178485723436413)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734178725672436413)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737102359532768022)
,p_parameter_id=>wwv_flow_api.id(31734178725672436413)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840142729145082943)
,p_parameter_id=>wwv_flow_api.id(31734178725672436413)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840233228740085893)
,p_parameter_id=>wwv_flow_api.id(31734178725672436413)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840240591139459686)
,p_parameter_id=>wwv_flow_api.id(31734178725672436413)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734179096792436413)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737103002824768022)
,p_parameter_id=>wwv_flow_api.id(31734179096792436413)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840143141269082943)
,p_parameter_id=>wwv_flow_api.id(31734179096792436413)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840233687914085894)
,p_parameter_id=>wwv_flow_api.id(31734179096792436413)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840240957866459687)
,p_parameter_id=>wwv_flow_api.id(31734179096792436413)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734179390845436413)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737103850793768023)
,p_parameter_id=>wwv_flow_api.id(31734179390845436413)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840143500733082943)
,p_parameter_id=>wwv_flow_api.id(31734179390845436413)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840234017833085894)
,p_parameter_id=>wwv_flow_api.id(31734179390845436413)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840241358791459687)
,p_parameter_id=>wwv_flow_api.id(31734179390845436413)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734179616902436413)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737104616413768023)
,p_parameter_id=>wwv_flow_api.id(31734179616902436413)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840143904611082944)
,p_parameter_id=>wwv_flow_api.id(31734179616902436413)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840234420288085894)
,p_parameter_id=>wwv_flow_api.id(31734179616902436413)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840241787575459687)
,p_parameter_id=>wwv_flow_api.id(31734179616902436413)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734179991747436414)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737105437011768024)
,p_parameter_id=>wwv_flow_api.id(31734179991747436414)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840144302169082945)
,p_parameter_id=>wwv_flow_api.id(31734179991747436414)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840234889502085894)
,p_parameter_id=>wwv_flow_api.id(31734179991747436414)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840242101862459688)
,p_parameter_id=>wwv_flow_api.id(31734179991747436414)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734180271005436414)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737106278027768025)
,p_parameter_id=>wwv_flow_api.id(31734180271005436414)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840144778467082945)
,p_parameter_id=>wwv_flow_api.id(31734180271005436414)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840235251754085895)
,p_parameter_id=>wwv_flow_api.id(31734180271005436414)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840242538371459688)
,p_parameter_id=>wwv_flow_api.id(31734180271005436414)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734180541970436414)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737107040923768025)
,p_parameter_id=>wwv_flow_api.id(31734180541970436414)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840145199173082945)
,p_parameter_id=>wwv_flow_api.id(31734180541970436414)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840235672831085895)
,p_parameter_id=>wwv_flow_api.id(31734180541970436414)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840242903007459688)
,p_parameter_id=>wwv_flow_api.id(31734180541970436414)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734180891587436414)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'spouse'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737107860511768026)
,p_parameter_id=>wwv_flow_api.id(31734180891587436414)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840145563066082945)
,p_parameter_id=>wwv_flow_api.id(31734180891587436414)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840236022112085895)
,p_parameter_id=>wwv_flow_api.id(31734180891587436414)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840243370145459689)
,p_parameter_id=>wwv_flow_api.id(31734180891587436414)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_SPOUSE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734181164354436414)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737108649042768027)
,p_parameter_id=>wwv_flow_api.id(31734181164354436414)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840145965654082946)
,p_parameter_id=>wwv_flow_api.id(31734181164354436414)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840236420704085896)
,p_parameter_id=>wwv_flow_api.id(31734181164354436414)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840243764728459689)
,p_parameter_id=>wwv_flow_api.id(31734181164354436414)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734181432270436415)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737109430912768028)
,p_parameter_id=>wwv_flow_api.id(31734181432270436415)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840146304082082946)
,p_parameter_id=>wwv_flow_api.id(31734181432270436415)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840236856157085896)
,p_parameter_id=>wwv_flow_api.id(31734181432270436415)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840244185568459689)
,p_parameter_id=>wwv_flow_api.id(31734181432270436415)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734181741536436415)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737110231305768029)
,p_parameter_id=>wwv_flow_api.id(31734181741536436415)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840146718849082946)
,p_parameter_id=>wwv_flow_api.id(31734181741536436415)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840237214890085897)
,p_parameter_id=>wwv_flow_api.id(31734181741536436415)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840244580326459689)
,p_parameter_id=>wwv_flow_api.id(31734181741536436415)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734182051775436415)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'manager'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737111035749768030)
,p_parameter_id=>wwv_flow_api.id(31734182051775436415)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840147198081082947)
,p_parameter_id=>wwv_flow_api.id(31734182051775436415)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840237602222085897)
,p_parameter_id=>wwv_flow_api.id(31734182051775436415)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840244970606459690)
,p_parameter_id=>wwv_flow_api.id(31734182051775436415)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_MANAGER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734182367429436415)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'bonus'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737111855695768030)
,p_parameter_id=>wwv_flow_api.id(31734182367429436415)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_BONUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840147552825082947)
,p_parameter_id=>wwv_flow_api.id(31734182367429436415)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_BONUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840245325289459690)
,p_parameter_id=>wwv_flow_api.id(31734182367429436415)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_BONUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840258052083085897)
,p_parameter_id=>wwv_flow_api.id(31734182367429436415)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_BONUS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734182632825436417)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737113432205768032)
,p_parameter_id=>wwv_flow_api.id(31734182632825436417)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840228394729082948)
,p_parameter_id=>wwv_flow_api.id(31734182632825436417)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840246113296459692)
,p_parameter_id=>wwv_flow_api.id(31734182632825436417)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840258888700085898)
,p_parameter_id=>wwv_flow_api.id(31734182632825436417)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY4'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734182901920436418)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'query2'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737114246431768032)
,p_parameter_id=>wwv_flow_api.id(31734182901920436418)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840228718141082948)
,p_parameter_id=>wwv_flow_api.id(31734182901920436418)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840246509683459692)
,p_parameter_id=>wwv_flow_api.id(31734182901920436418)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840259226687085898)
,p_parameter_id=>wwv_flow_api.id(31734182901920436418)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY2'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734183249051436418)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'query3'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737115005541768033)
,p_parameter_id=>wwv_flow_api.id(31734183249051436418)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840229189735082950)
,p_parameter_id=>wwv_flow_api.id(31734183249051436418)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840246999190459693)
,p_parameter_id=>wwv_flow_api.id(31734183249051436418)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840259614194085899)
,p_parameter_id=>wwv_flow_api.id(31734183249051436418)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY3'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734183564196436418)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'query4'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737115875389768034)
,p_parameter_id=>wwv_flow_api.id(31734183564196436418)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840229556025082950)
,p_parameter_id=>wwv_flow_api.id(31734183564196436418)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840247326096459693)
,p_parameter_id=>wwv_flow_api.id(31734183564196436418)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840260046677085899)
,p_parameter_id=>wwv_flow_api.id(31734183564196436418)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734183808881436418)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734495861568468815)
,p_ws_opers_id=>wwv_flow_api.id(31734136345879436409)
,p_name=>'department'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737112673345768031)
,p_parameter_id=>wwv_flow_api.id(31734495861568468815)
,p_process_id=>wwv_flow_api.id(31737065901625768008)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_DEPARTMENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840147937644082947)
,p_parameter_id=>wwv_flow_api.id(31734495861568468815)
,p_process_id=>wwv_flow_api.id(31840139653888082937)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_DEPARTMENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840245791703459690)
,p_parameter_id=>wwv_flow_api.id(31734495861568468815)
,p_process_id=>wwv_flow_api.id(31840227417632459679)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_DEPARTMENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31840258462756085898)
,p_parameter_id=>wwv_flow_api.id(31734495861568468815)
,p_process_id=>wwv_flow_api.id(31840230132808085890)
,p_map_type=>'ITEM'
,p_parm_value=>'P25_DEPARTMENT'
);
end;
/
prompt --application/shared_components/logic/webservices/president
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31734381214104829538)
,p_name=>'President'
,p_url=>'aevum.cs.utexas.edu:6020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31734381463948829538)
,p_ws_id=>wwv_flow_api.id(31734381214104829538)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734381781286829541)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737250349401163600)
,p_parameter_id=>wwv_flow_api.id(31734381781286829541)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841242525592220358)
,p_parameter_id=>wwv_flow_api.id(31734381781286829541)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841274824695592668)
,p_parameter_id=>wwv_flow_api.id(31734381781286829541)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841285955074594006)
,p_parameter_id=>wwv_flow_api.id(31734381781286829541)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734382053861829541)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737251159829163601)
,p_parameter_id=>wwv_flow_api.id(31734382053861829541)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841242921114220359)
,p_parameter_id=>wwv_flow_api.id(31734382053861829541)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841275249113592668)
,p_parameter_id=>wwv_flow_api.id(31734382053861829541)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841286317899594006)
,p_parameter_id=>wwv_flow_api.id(31734382053861829541)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734382307102829542)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737251918015163602)
,p_parameter_id=>wwv_flow_api.id(31734382307102829542)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841243398981220359)
,p_parameter_id=>wwv_flow_api.id(31734382307102829542)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841275623125592669)
,p_parameter_id=>wwv_flow_api.id(31734382307102829542)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841286776825594007)
,p_parameter_id=>wwv_flow_api.id(31734382307102829542)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734382616866829542)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737252720092163603)
,p_parameter_id=>wwv_flow_api.id(31734382616866829542)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841243791165220359)
,p_parameter_id=>wwv_flow_api.id(31734382616866829542)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841276029931592669)
,p_parameter_id=>wwv_flow_api.id(31734382616866829542)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841287170944594007)
,p_parameter_id=>wwv_flow_api.id(31734382616866829542)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734382981093829542)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737253530873163604)
,p_parameter_id=>wwv_flow_api.id(31734382981093829542)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841244195601220359)
,p_parameter_id=>wwv_flow_api.id(31734382981093829542)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841276477879592669)
,p_parameter_id=>wwv_flow_api.id(31734382981093829542)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841287552307594008)
,p_parameter_id=>wwv_flow_api.id(31734382981093829542)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734383272707829542)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737254339731163605)
,p_parameter_id=>wwv_flow_api.id(31734383272707829542)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841244584900220360)
,p_parameter_id=>wwv_flow_api.id(31734383272707829542)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841276804416592670)
,p_parameter_id=>wwv_flow_api.id(31734383272707829542)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841287990220594008)
,p_parameter_id=>wwv_flow_api.id(31734383272707829542)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734383564405829543)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737255140833163605)
,p_parameter_id=>wwv_flow_api.id(31734383564405829543)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841244952600220360)
,p_parameter_id=>wwv_flow_api.id(31734383564405829543)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841277209815592670)
,p_parameter_id=>wwv_flow_api.id(31734383564405829543)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841288324575594008)
,p_parameter_id=>wwv_flow_api.id(31734383564405829543)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734383826365829543)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737256048989163606)
,p_parameter_id=>wwv_flow_api.id(31734383826365829543)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841245392804220360)
,p_parameter_id=>wwv_flow_api.id(31734383826365829543)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841277613873592670)
,p_parameter_id=>wwv_flow_api.id(31734383826365829543)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841288788426594011)
,p_parameter_id=>wwv_flow_api.id(31734383826365829543)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734384115929829544)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737256871106163607)
,p_parameter_id=>wwv_flow_api.id(31734384115929829544)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841245741713220361)
,p_parameter_id=>wwv_flow_api.id(31734384115929829544)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841278007628592670)
,p_parameter_id=>wwv_flow_api.id(31734384115929829544)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841289170055594011)
,p_parameter_id=>wwv_flow_api.id(31734384115929829544)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734384421034829544)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737257616821163607)
,p_parameter_id=>wwv_flow_api.id(31734384421034829544)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841246189833220361)
,p_parameter_id=>wwv_flow_api.id(31734384421034829544)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841278412445592671)
,p_parameter_id=>wwv_flow_api.id(31734384421034829544)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841289544840594011)
,p_parameter_id=>wwv_flow_api.id(31734384421034829544)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734384747083829545)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737258472233163609)
,p_parameter_id=>wwv_flow_api.id(31734384747083829545)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841246506679220361)
,p_parameter_id=>wwv_flow_api.id(31734384747083829545)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841278838662592671)
,p_parameter_id=>wwv_flow_api.id(31734384747083829545)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841289911570594012)
,p_parameter_id=>wwv_flow_api.id(31734384747083829545)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734385060403829545)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737259271366163609)
,p_parameter_id=>wwv_flow_api.id(31734385060403829545)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841246905053220361)
,p_parameter_id=>wwv_flow_api.id(31734385060403829545)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841279238540592672)
,p_parameter_id=>wwv_flow_api.id(31734385060403829545)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841290329304594012)
,p_parameter_id=>wwv_flow_api.id(31734385060403829545)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734385374241829545)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737260050060163610)
,p_parameter_id=>wwv_flow_api.id(31734385374241829545)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841247382823220363)
,p_parameter_id=>wwv_flow_api.id(31734385374241829545)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841279675957592672)
,p_parameter_id=>wwv_flow_api.id(31734385374241829545)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841290737321594012)
,p_parameter_id=>wwv_flow_api.id(31734385374241829545)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734385639786829545)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737260810156163611)
,p_parameter_id=>wwv_flow_api.id(31734385639786829545)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841247786797220363)
,p_parameter_id=>wwv_flow_api.id(31734385639786829545)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841280048355592672)
,p_parameter_id=>wwv_flow_api.id(31734385639786829545)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841291117667594012)
,p_parameter_id=>wwv_flow_api.id(31734385639786829545)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734385962134829545)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'spouse'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737261694814163611)
,p_parameter_id=>wwv_flow_api.id(31734385962134829545)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841280472114592673)
,p_parameter_id=>wwv_flow_api.id(31734385962134829545)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841291562869594013)
,p_parameter_id=>wwv_flow_api.id(31734385962134829545)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841298144841220364)
,p_parameter_id=>wwv_flow_api.id(31734385962134829545)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_SPOUSE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734386206132829546)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737262468812163612)
,p_parameter_id=>wwv_flow_api.id(31734386206132829546)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841280879591592673)
,p_parameter_id=>wwv_flow_api.id(31734386206132829546)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841291908220594013)
,p_parameter_id=>wwv_flow_api.id(31734386206132829546)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841298548457220364)
,p_parameter_id=>wwv_flow_api.id(31734386206132829546)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734386590039829546)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737263264603163613)
,p_parameter_id=>wwv_flow_api.id(31734386590039829546)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841281225853592674)
,p_parameter_id=>wwv_flow_api.id(31734386590039829546)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841292378628594013)
,p_parameter_id=>wwv_flow_api.id(31734386590039829546)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841298945513220364)
,p_parameter_id=>wwv_flow_api.id(31734386590039829546)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734386847027829546)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737264027572163614)
,p_parameter_id=>wwv_flow_api.id(31734386847027829546)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841281642880592674)
,p_parameter_id=>wwv_flow_api.id(31734386847027829546)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841292726097594014)
,p_parameter_id=>wwv_flow_api.id(31734386847027829546)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841299330791220365)
,p_parameter_id=>wwv_flow_api.id(31734386847027829546)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734387125311829547)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'manager'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737264860936163614)
,p_parameter_id=>wwv_flow_api.id(31734387125311829547)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841282028327592674)
,p_parameter_id=>wwv_flow_api.id(31734387125311829547)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841293105218594014)
,p_parameter_id=>wwv_flow_api.id(31734387125311829547)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841299721115220365)
,p_parameter_id=>wwv_flow_api.id(31734387125311829547)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_MANAGER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734387464654829547)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'bonus'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737265645942163615)
,p_parameter_id=>wwv_flow_api.id(31734387464654829547)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_BONUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841282440242592674)
,p_parameter_id=>wwv_flow_api.id(31734387464654829547)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_BONUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841293527973594014)
,p_parameter_id=>wwv_flow_api.id(31734387464654829547)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_BONUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841300178644220365)
,p_parameter_id=>wwv_flow_api.id(31734387464654829547)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_BONUS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734387705829829547)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737267298505163616)
,p_parameter_id=>wwv_flow_api.id(31734387705829829547)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841283270641592675)
,p_parameter_id=>wwv_flow_api.id(31734387705829829547)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841294334949594015)
,p_parameter_id=>wwv_flow_api.id(31734387705829829547)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841300902881220366)
,p_parameter_id=>wwv_flow_api.id(31734387705829829547)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY4'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734388027097829548)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'query2'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737268082967163617)
,p_parameter_id=>wwv_flow_api.id(31734388027097829548)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841283638800592675)
,p_parameter_id=>wwv_flow_api.id(31734388027097829548)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841294786933594015)
,p_parameter_id=>wwv_flow_api.id(31734388027097829548)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841301377211220366)
,p_parameter_id=>wwv_flow_api.id(31734388027097829548)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY2'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734388321547829548)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'query3'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737268883750163618)
,p_parameter_id=>wwv_flow_api.id(31734388321547829548)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841284042597592675)
,p_parameter_id=>wwv_flow_api.id(31734388321547829548)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841295146505594015)
,p_parameter_id=>wwv_flow_api.id(31734388321547829548)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841301798948220366)
,p_parameter_id=>wwv_flow_api.id(31734388321547829548)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY3'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734388686137829549)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'query4'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737269636246163619)
,p_parameter_id=>wwv_flow_api.id(31734388686137829549)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841284472076592676)
,p_parameter_id=>wwv_flow_api.id(31734388686137829549)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841295518343594016)
,p_parameter_id=>wwv_flow_api.id(31734388686137829549)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841302189876220367)
,p_parameter_id=>wwv_flow_api.id(31734388686137829549)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734388905202829549)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734508293831845555)
,p_ws_opers_id=>wwv_flow_api.id(31734381463948829538)
,p_name=>'department'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737266403931163616)
,p_parameter_id=>wwv_flow_api.id(31734508293831845555)
,p_process_id=>wwv_flow_api.id(31737249550508163597)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_DEPARTMENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841282866132592675)
,p_parameter_id=>wwv_flow_api.id(31734508293831845555)
,p_process_id=>wwv_flow_api.id(31841274533035592667)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_DEPARTMENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841293930520594014)
,p_parameter_id=>wwv_flow_api.id(31734508293831845555)
,p_process_id=>wwv_flow_api.id(31841285601859594005)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_DEPARTMENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841300523416220366)
,p_parameter_id=>wwv_flow_api.id(31734508293831845555)
,p_process_id=>wwv_flow_api.id(31841242264878220356)
,p_map_type=>'ITEM'
,p_parm_value=>'P26_DEPARTMENT'
);
end;
/
prompt --application/shared_components/logic/webservices/interim_manager
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31734463424427838857)
,p_name=>'Interim Manager'
,p_url=>'aevum.cs.utexas.edu:6020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31734463682389838857)
,p_ws_id=>wwv_flow_api.id(31734463424427838857)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734463948775838859)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737593688618820623)
,p_parameter_id=>wwv_flow_api.id(31734463948775838859)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841329375649226700)
,p_parameter_id=>wwv_flow_api.id(31734463948775838859)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841339394915604866)
,p_parameter_id=>wwv_flow_api.id(31734463948775838859)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841350595025228369)
,p_parameter_id=>wwv_flow_api.id(31734463948775838859)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734464261676838860)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737594438138820624)
,p_parameter_id=>wwv_flow_api.id(31734464261676838860)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841329760217226701)
,p_parameter_id=>wwv_flow_api.id(31734464261676838860)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841339798945604867)
,p_parameter_id=>wwv_flow_api.id(31734464261676838860)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841350972529228369)
,p_parameter_id=>wwv_flow_api.id(31734464261676838860)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734464527349838860)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737595265235820624)
,p_parameter_id=>wwv_flow_api.id(31734464527349838860)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841330196634226701)
,p_parameter_id=>wwv_flow_api.id(31734464527349838860)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841340112557604867)
,p_parameter_id=>wwv_flow_api.id(31734464527349838860)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841351394013228370)
,p_parameter_id=>wwv_flow_api.id(31734464527349838860)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734464826084838860)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737596085047820625)
,p_parameter_id=>wwv_flow_api.id(31734464826084838860)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841330558781226702)
,p_parameter_id=>wwv_flow_api.id(31734464826084838860)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841340527322604867)
,p_parameter_id=>wwv_flow_api.id(31734464826084838860)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841351706294228371)
,p_parameter_id=>wwv_flow_api.id(31734464826084838860)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734465116013838860)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737596880105820627)
,p_parameter_id=>wwv_flow_api.id(31734465116013838860)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841330930344226702)
,p_parameter_id=>wwv_flow_api.id(31734465116013838860)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841340982884604868)
,p_parameter_id=>wwv_flow_api.id(31734465116013838860)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841352169550228371)
,p_parameter_id=>wwv_flow_api.id(31734465116013838860)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734465448188838861)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737597655834820627)
,p_parameter_id=>wwv_flow_api.id(31734465448188838861)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841331346854226702)
,p_parameter_id=>wwv_flow_api.id(31734465448188838861)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841341301070604868)
,p_parameter_id=>wwv_flow_api.id(31734465448188838861)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841352585970228371)
,p_parameter_id=>wwv_flow_api.id(31734465448188838861)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734465765647838861)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737638416785820628)
,p_parameter_id=>wwv_flow_api.id(31734465765647838861)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841331758218226703)
,p_parameter_id=>wwv_flow_api.id(31734465765647838861)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841341708562604869)
,p_parameter_id=>wwv_flow_api.id(31734465765647838861)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841352968295228372)
,p_parameter_id=>wwv_flow_api.id(31734465765647838861)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734466062344838861)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737639200626820629)
,p_parameter_id=>wwv_flow_api.id(31734466062344838861)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841332188618226703)
,p_parameter_id=>wwv_flow_api.id(31734466062344838861)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841342197848604869)
,p_parameter_id=>wwv_flow_api.id(31734466062344838861)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841353305248228372)
,p_parameter_id=>wwv_flow_api.id(31734466062344838861)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734466354741838863)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737640065936820630)
,p_parameter_id=>wwv_flow_api.id(31734466354741838863)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841332576392226703)
,p_parameter_id=>wwv_flow_api.id(31734466354741838863)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841342513962604869)
,p_parameter_id=>wwv_flow_api.id(31734466354741838863)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841353774828228372)
,p_parameter_id=>wwv_flow_api.id(31734466354741838863)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734466611735838863)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737640861910820630)
,p_parameter_id=>wwv_flow_api.id(31734466611735838863)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841332961877226704)
,p_parameter_id=>wwv_flow_api.id(31734466611735838863)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841342914561604870)
,p_parameter_id=>wwv_flow_api.id(31734466611735838863)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841354139466228372)
,p_parameter_id=>wwv_flow_api.id(31734466611735838863)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734466932531838863)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737641646077820631)
,p_parameter_id=>wwv_flow_api.id(31734466932531838863)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841333318381226704)
,p_parameter_id=>wwv_flow_api.id(31734466932531838863)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841343301232604870)
,p_parameter_id=>wwv_flow_api.id(31734466932531838863)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841354530537228373)
,p_parameter_id=>wwv_flow_api.id(31734466932531838863)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734467295630838864)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737642480544820632)
,p_parameter_id=>wwv_flow_api.id(31734467295630838864)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841333747499226705)
,p_parameter_id=>wwv_flow_api.id(31734467295630838864)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841343783922604870)
,p_parameter_id=>wwv_flow_api.id(31734467295630838864)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841354903078228373)
,p_parameter_id=>wwv_flow_api.id(31734467295630838864)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734467590166838864)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737643270980820632)
,p_parameter_id=>wwv_flow_api.id(31734467590166838864)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841334110464226705)
,p_parameter_id=>wwv_flow_api.id(31734467590166838864)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841344127151604871)
,p_parameter_id=>wwv_flow_api.id(31734467590166838864)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841355320214228373)
,p_parameter_id=>wwv_flow_api.id(31734467590166838864)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734467877364838864)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'manager'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737644082671820633)
,p_parameter_id=>wwv_flow_api.id(31734467877364838864)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841334531105226705)
,p_parameter_id=>wwv_flow_api.id(31734467877364838864)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841344526270604871)
,p_parameter_id=>wwv_flow_api.id(31734467877364838864)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841355754284228373)
,p_parameter_id=>wwv_flow_api.id(31734467877364838864)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_MANAGER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734478148011838864)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'bonus'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737644805638820634)
,p_parameter_id=>wwv_flow_api.id(31734478148011838864)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_BONUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841334947660226705)
,p_parameter_id=>wwv_flow_api.id(31734478148011838864)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_BONUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841344910515604871)
,p_parameter_id=>wwv_flow_api.id(31734478148011838864)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_BONUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841356181343228374)
,p_parameter_id=>wwv_flow_api.id(31734478148011838864)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_BONUS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734478450849838865)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737645612332820635)
,p_parameter_id=>wwv_flow_api.id(31734478450849838865)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841335342380226706)
,p_parameter_id=>wwv_flow_api.id(31734478450849838865)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841345351956604872)
,p_parameter_id=>wwv_flow_api.id(31734478450849838865)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841356564931228374)
,p_parameter_id=>wwv_flow_api.id(31734478450849838865)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734478707032838865)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737646439725820635)
,p_parameter_id=>wwv_flow_api.id(31734478707032838865)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841335767994226706)
,p_parameter_id=>wwv_flow_api.id(31734478707032838865)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841345703398604872)
,p_parameter_id=>wwv_flow_api.id(31734478707032838865)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841356979058228374)
,p_parameter_id=>wwv_flow_api.id(31734478707032838865)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734479092116838865)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737647227571820636)
,p_parameter_id=>wwv_flow_api.id(31734479092116838865)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841336112051226706)
,p_parameter_id=>wwv_flow_api.id(31734479092116838865)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841346147100604874)
,p_parameter_id=>wwv_flow_api.id(31734479092116838865)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841357302021228375)
,p_parameter_id=>wwv_flow_api.id(31734479092116838865)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734479352591838865)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'spouse'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737648084496820637)
,p_parameter_id=>wwv_flow_api.id(31734479352591838865)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841336597123226707)
,p_parameter_id=>wwv_flow_api.id(31734479352591838865)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841346548016604875)
,p_parameter_id=>wwv_flow_api.id(31734479352591838865)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841357740532228375)
,p_parameter_id=>wwv_flow_api.id(31734479352591838865)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_SPOUSE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734479606665838866)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737648810854820638)
,p_parameter_id=>wwv_flow_api.id(31734479606665838866)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841336972744226707)
,p_parameter_id=>wwv_flow_api.id(31734479606665838866)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841346997613604875)
,p_parameter_id=>wwv_flow_api.id(31734479606665838866)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841358184833228375)
,p_parameter_id=>wwv_flow_api.id(31734479606665838866)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734479940255838866)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737650474210820639)
,p_parameter_id=>wwv_flow_api.id(31734479940255838866)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841337767789226707)
,p_parameter_id=>wwv_flow_api.id(31734479940255838866)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841347796998604875)
,p_parameter_id=>wwv_flow_api.id(31734479940255838866)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841358962083228376)
,p_parameter_id=>wwv_flow_api.id(31734479940255838866)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_QUERY3'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734480236796838866)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'query2'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737651200752820639)
,p_parameter_id=>wwv_flow_api.id(31734480236796838866)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841348166433226708)
,p_parameter_id=>wwv_flow_api.id(31734480236796838866)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841359325275228377)
,p_parameter_id=>wwv_flow_api.id(31734480236796838866)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841368172589604876)
,p_parameter_id=>wwv_flow_api.id(31734480236796838866)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_QUERY2'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734480573034838866)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'query3'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737652063631820640)
,p_parameter_id=>wwv_flow_api.id(31734480573034838866)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841348518148226708)
,p_parameter_id=>wwv_flow_api.id(31734480573034838866)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841359783818228378)
,p_parameter_id=>wwv_flow_api.id(31734480573034838866)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841368535123604876)
,p_parameter_id=>wwv_flow_api.id(31734480573034838866)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_QUERY3'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734480893145838867)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'query4'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737652856008820641)
,p_parameter_id=>wwv_flow_api.id(31734480893145838867)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841348981945226708)
,p_parameter_id=>wwv_flow_api.id(31734480893145838867)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841360144771228378)
,p_parameter_id=>wwv_flow_api.id(31734480893145838867)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841368907440604877)
,p_parameter_id=>wwv_flow_api.id(31734480893145838867)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734481160613838867)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734514018877847375)
,p_ws_opers_id=>wwv_flow_api.id(31734463682389838857)
,p_name=>'department'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737649604198820638)
,p_parameter_id=>wwv_flow_api.id(31734514018877847375)
,p_process_id=>wwv_flow_api.id(31737592826087820621)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_DEPARTMENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841337349219226707)
,p_parameter_id=>wwv_flow_api.id(31734514018877847375)
,p_process_id=>wwv_flow_api.id(31841329050139226699)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_DEPARTMENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841347382639604875)
,p_parameter_id=>wwv_flow_api.id(31734514018877847375)
,p_process_id=>wwv_flow_api.id(31841339092162604865)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_DEPARTMENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841358559242228376)
,p_parameter_id=>wwv_flow_api.id(31734514018877847375)
,p_process_id=>wwv_flow_api.id(31841350208384228369)
,p_map_type=>'ITEM'
,p_parm_value=>'P27_DEPARTMENT'
);
end;
/
prompt --application/shared_components/logic/webservices/project_employee
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31734606909378861067)
,p_name=>'Project Employee'
,p_url=>'aevum.cs.utexas.edu:6020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31734607198076861068)
,p_ws_id=>wwv_flow_api.id(31734606909378861067)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734607497397861068)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738972325394364208)
,p_parameter_id=>wwv_flow_api.id(31734607497397861068)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841726052500276174)
,p_parameter_id=>wwv_flow_api.id(31734607497397861068)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841746602057277994)
,p_parameter_id=>wwv_flow_api.id(31734607497397861068)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734607746742861068)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738973127367364210)
,p_parameter_id=>wwv_flow_api.id(31734607746742861068)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841726460270276174)
,p_parameter_id=>wwv_flow_api.id(31734607746742861068)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841747068868277994)
,p_parameter_id=>wwv_flow_api.id(31734607746742861068)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734608052810861069)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738973935268364210)
,p_parameter_id=>wwv_flow_api.id(31734608052810861069)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841726849554276174)
,p_parameter_id=>wwv_flow_api.id(31734608052810861069)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841747475874277995)
,p_parameter_id=>wwv_flow_api.id(31734608052810861069)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734608371761861069)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738974722159364211)
,p_parameter_id=>wwv_flow_api.id(31734608371761861069)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841727218719276175)
,p_parameter_id=>wwv_flow_api.id(31734608371761861069)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841747858926277995)
,p_parameter_id=>wwv_flow_api.id(31734608371761861069)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734608668726861069)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738975553894364212)
,p_parameter_id=>wwv_flow_api.id(31734608668726861069)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841727630828276175)
,p_parameter_id=>wwv_flow_api.id(31734608668726861069)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841768241616277995)
,p_parameter_id=>wwv_flow_api.id(31734608668726861069)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734608955856861070)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738976317218364213)
,p_parameter_id=>wwv_flow_api.id(31734608955856861070)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841738092983276175)
,p_parameter_id=>wwv_flow_api.id(31734608955856861070)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841768681123277996)
,p_parameter_id=>wwv_flow_api.id(31734608955856861070)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734609246197861070)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738977158188364213)
,p_parameter_id=>wwv_flow_api.id(31734609246197861070)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841738461237276176)
,p_parameter_id=>wwv_flow_api.id(31734609246197861070)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841769081817277997)
,p_parameter_id=>wwv_flow_api.id(31734609246197861070)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734609538089861070)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738977914856364215)
,p_parameter_id=>wwv_flow_api.id(31734609538089861070)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841738819546276176)
,p_parameter_id=>wwv_flow_api.id(31734609538089861070)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841769402037277997)
,p_parameter_id=>wwv_flow_api.id(31734609538089861070)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734609843505861070)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738978729455364215)
,p_parameter_id=>wwv_flow_api.id(31734609843505861070)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841739238154276176)
,p_parameter_id=>wwv_flow_api.id(31734609843505861070)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841769862454277997)
,p_parameter_id=>wwv_flow_api.id(31734609843505861070)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734610107103861071)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738979546472364216)
,p_parameter_id=>wwv_flow_api.id(31734610107103861071)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841739667686276177)
,p_parameter_id=>wwv_flow_api.id(31734610107103861071)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841770229008277998)
,p_parameter_id=>wwv_flow_api.id(31734610107103861071)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734610421931861071)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738980319764364216)
,p_parameter_id=>wwv_flow_api.id(31734610421931861071)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841740037353276177)
,p_parameter_id=>wwv_flow_api.id(31734610421931861071)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841770649914277998)
,p_parameter_id=>wwv_flow_api.id(31734610421931861071)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734610764935861071)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738981146160364217)
,p_parameter_id=>wwv_flow_api.id(31734610764935861071)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841740423599276177)
,p_parameter_id=>wwv_flow_api.id(31734610764935861071)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841771017062277998)
,p_parameter_id=>wwv_flow_api.id(31734610764935861071)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734611087525861071)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738981966783364218)
,p_parameter_id=>wwv_flow_api.id(31734611087525861071)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841740875042276178)
,p_parameter_id=>wwv_flow_api.id(31734611087525861071)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841771424046277999)
,p_parameter_id=>wwv_flow_api.id(31734611087525861071)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734611339539861072)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738982774332364218)
,p_parameter_id=>wwv_flow_api.id(31734611339539861072)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841741273024276178)
,p_parameter_id=>wwv_flow_api.id(31734611339539861072)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841771883086277999)
,p_parameter_id=>wwv_flow_api.id(31734611339539861072)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734611644515861072)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'spouse'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738983560152364219)
,p_parameter_id=>wwv_flow_api.id(31734611644515861072)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841741684124276178)
,p_parameter_id=>wwv_flow_api.id(31734611644515861072)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841772295787277999)
,p_parameter_id=>wwv_flow_api.id(31734611644515861072)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_SPOUSE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734611991676861072)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738984352643364220)
,p_parameter_id=>wwv_flow_api.id(31734611991676861072)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841742037151276179)
,p_parameter_id=>wwv_flow_api.id(31734611991676861072)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841772649065278000)
,p_parameter_id=>wwv_flow_api.id(31734611991676861072)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734612271209861073)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738985155442364221)
,p_parameter_id=>wwv_flow_api.id(31734612271209861073)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841742454986276179)
,p_parameter_id=>wwv_flow_api.id(31734612271209861073)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841773031481278000)
,p_parameter_id=>wwv_flow_api.id(31734612271209861073)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734612527400861073)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738985919512364221)
,p_parameter_id=>wwv_flow_api.id(31734612527400861073)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841742864287276179)
,p_parameter_id=>wwv_flow_api.id(31734612527400861073)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841773451814278000)
,p_parameter_id=>wwv_flow_api.id(31734612527400861073)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734612858534861074)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'manager'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738986739376364222)
,p_parameter_id=>wwv_flow_api.id(31734612858534861074)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841743269707276179)
,p_parameter_id=>wwv_flow_api.id(31734612858534861074)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841773812126278001)
,p_parameter_id=>wwv_flow_api.id(31734612858534861074)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_MANAGER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734613150569861075)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738987592984364223)
,p_parameter_id=>wwv_flow_api.id(31734613150569861075)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841743692231276180)
,p_parameter_id=>wwv_flow_api.id(31734613150569861075)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841774222316278001)
,p_parameter_id=>wwv_flow_api.id(31734613150569861075)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_QUERY3'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734613414126861075)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'query2'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738988389641364224)
,p_parameter_id=>wwv_flow_api.id(31734613414126861075)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841744005902276180)
,p_parameter_id=>wwv_flow_api.id(31734613414126861075)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841774696207278001)
,p_parameter_id=>wwv_flow_api.id(31734613414126861075)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_QUERY2'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734613779451861075)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'query3'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738989136390364224)
,p_parameter_id=>wwv_flow_api.id(31734613779451861075)
,p_process_id=>wwv_flow_api.id(31738971455672364207)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841744435468276180)
,p_parameter_id=>wwv_flow_api.id(31734613779451861075)
,p_process_id=>wwv_flow_api.id(31841725725881276173)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841775027790278001)
,p_parameter_id=>wwv_flow_api.id(31734613779451861075)
,p_process_id=>wwv_flow_api.id(31841746329589277993)
,p_map_type=>'ITEM'
,p_parm_value=>'P32_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734614029701861076)
,p_ws_opers_id=>wwv_flow_api.id(31734607198076861068)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/project
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31734930444699518418)
,p_name=>'Project'
,p_url=>'aevum.cs.utexas.edu:6020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31734930669463518420)
,p_ws_id=>wwv_flow_api.id(31734930444699518418)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734930905320518420)
,p_ws_opers_id=>wwv_flow_api.id(31734930669463518420)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737796797429836959)
,p_parameter_id=>wwv_flow_api.id(31734930905320518420)
,p_process_id=>wwv_flow_api.id(31737795976470836958)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841490998777621354)
,p_parameter_id=>wwv_flow_api.id(31734930905320518420)
,p_process_id=>wwv_flow_api.id(31841490628709621353)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841508270391623160)
,p_parameter_id=>wwv_flow_api.id(31734930905320518420)
,p_process_id=>wwv_flow_api.id(31841497933788623160)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841516026633624924)
,p_parameter_id=>wwv_flow_api.id(31734930905320518420)
,p_process_id=>wwv_flow_api.id(31841515702920624923)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734931294209518420)
,p_ws_opers_id=>wwv_flow_api.id(31734930669463518420)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737797535798836961)
,p_parameter_id=>wwv_flow_api.id(31734931294209518420)
,p_process_id=>wwv_flow_api.id(31737795976470836958)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841491302277621354)
,p_parameter_id=>wwv_flow_api.id(31734931294209518420)
,p_process_id=>wwv_flow_api.id(31841490628709621353)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841508673874623161)
,p_parameter_id=>wwv_flow_api.id(31734931294209518420)
,p_process_id=>wwv_flow_api.id(31841497933788623160)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841516442978624924)
,p_parameter_id=>wwv_flow_api.id(31734931294209518420)
,p_process_id=>wwv_flow_api.id(31841515702920624923)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734931571379518421)
,p_ws_opers_id=>wwv_flow_api.id(31734930669463518420)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737798339251836962)
,p_parameter_id=>wwv_flow_api.id(31734931571379518421)
,p_process_id=>wwv_flow_api.id(31737795976470836958)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841491738990621355)
,p_parameter_id=>wwv_flow_api.id(31734931571379518421)
,p_process_id=>wwv_flow_api.id(31841490628709621353)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841509026558623161)
,p_parameter_id=>wwv_flow_api.id(31734931571379518421)
,p_process_id=>wwv_flow_api.id(31841497933788623160)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841516848719624924)
,p_parameter_id=>wwv_flow_api.id(31734931571379518421)
,p_process_id=>wwv_flow_api.id(31841515702920624923)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734931898266518421)
,p_ws_opers_id=>wwv_flow_api.id(31734930669463518420)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737799160148836963)
,p_parameter_id=>wwv_flow_api.id(31734931898266518421)
,p_process_id=>wwv_flow_api.id(31737795976470836958)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841492197068621355)
,p_parameter_id=>wwv_flow_api.id(31734931898266518421)
,p_process_id=>wwv_flow_api.id(31841490628709621353)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841509459405623162)
,p_parameter_id=>wwv_flow_api.id(31734931898266518421)
,p_process_id=>wwv_flow_api.id(31841497933788623160)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841517208408624925)
,p_parameter_id=>wwv_flow_api.id(31734931898266518421)
,p_process_id=>wwv_flow_api.id(31841515702920624923)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734932178216518421)
,p_ws_opers_id=>wwv_flow_api.id(31734930669463518420)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737799999629836963)
,p_parameter_id=>wwv_flow_api.id(31734932178216518421)
,p_process_id=>wwv_flow_api.id(31737795976470836958)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841492504854621355)
,p_parameter_id=>wwv_flow_api.id(31734932178216518421)
,p_process_id=>wwv_flow_api.id(31841490628709621353)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841509808085623162)
,p_parameter_id=>wwv_flow_api.id(31734932178216518421)
,p_process_id=>wwv_flow_api.id(31841497933788623160)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841517675921624925)
,p_parameter_id=>wwv_flow_api.id(31734932178216518421)
,p_process_id=>wwv_flow_api.id(31841515702920624923)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734932483755518421)
,p_ws_opers_id=>wwv_flow_api.id(31734930669463518420)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737800700620836964)
,p_parameter_id=>wwv_flow_api.id(31734932483755518421)
,p_process_id=>wwv_flow_api.id(31737795976470836958)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841492994876621356)
,p_parameter_id=>wwv_flow_api.id(31734932483755518421)
,p_process_id=>wwv_flow_api.id(31841490628709621353)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841510298081623162)
,p_parameter_id=>wwv_flow_api.id(31734932483755518421)
,p_process_id=>wwv_flow_api.id(31841497933788623160)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841518062870624926)
,p_parameter_id=>wwv_flow_api.id(31734932483755518421)
,p_process_id=>wwv_flow_api.id(31841515702920624923)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734932788192518422)
,p_ws_opers_id=>wwv_flow_api.id(31734930669463518420)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737801586422836965)
,p_parameter_id=>wwv_flow_api.id(31734932788192518422)
,p_process_id=>wwv_flow_api.id(31737795976470836958)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841493340207621356)
,p_parameter_id=>wwv_flow_api.id(31734932788192518422)
,p_process_id=>wwv_flow_api.id(31841490628709621353)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841510644120623163)
,p_parameter_id=>wwv_flow_api.id(31734932788192518422)
,p_process_id=>wwv_flow_api.id(31841497933788623160)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841518473562624926)
,p_parameter_id=>wwv_flow_api.id(31734932788192518422)
,p_process_id=>wwv_flow_api.id(31841515702920624923)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734933056552518422)
,p_ws_opers_id=>wwv_flow_api.id(31734930669463518420)
,p_name=>'projectno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737802325691836966)
,p_parameter_id=>wwv_flow_api.id(31734933056552518422)
,p_process_id=>wwv_flow_api.id(31737795976470836958)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_PROJECTNO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841493784501621356)
,p_parameter_id=>wwv_flow_api.id(31734933056552518422)
,p_process_id=>wwv_flow_api.id(31841490628709621353)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_PROJECTNO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841511081081623163)
,p_parameter_id=>wwv_flow_api.id(31734933056552518422)
,p_process_id=>wwv_flow_api.id(31841497933788623160)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_PROJECTNO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841518850368624926)
,p_parameter_id=>wwv_flow_api.id(31734933056552518422)
,p_process_id=>wwv_flow_api.id(31841515702920624923)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_PROJECTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734933322289518422)
,p_ws_opers_id=>wwv_flow_api.id(31734930669463518420)
,p_name=>'projecttitle'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737803133417836966)
,p_parameter_id=>wwv_flow_api.id(31734933322289518422)
,p_process_id=>wwv_flow_api.id(31737795976470836958)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_PROJECTTITLE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841494101967621356)
,p_parameter_id=>wwv_flow_api.id(31734933322289518422)
,p_process_id=>wwv_flow_api.id(31841490628709621353)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_PROJECTTITLE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841511437563623164)
,p_parameter_id=>wwv_flow_api.id(31734933322289518422)
,p_process_id=>wwv_flow_api.id(31841497933788623160)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_PROJECTTITLE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841519229643624927)
,p_parameter_id=>wwv_flow_api.id(31734933322289518422)
,p_process_id=>wwv_flow_api.id(31841515702920624923)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_PROJECTTITLE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734933678254518422)
,p_ws_opers_id=>wwv_flow_api.id(31734930669463518420)
,p_name=>'manager'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737803948840836968)
,p_parameter_id=>wwv_flow_api.id(31734933678254518422)
,p_process_id=>wwv_flow_api.id(31737795976470836958)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841494525833621357)
,p_parameter_id=>wwv_flow_api.id(31734933678254518422)
,p_process_id=>wwv_flow_api.id(31841490628709621353)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841511827794623164)
,p_parameter_id=>wwv_flow_api.id(31734933678254518422)
,p_process_id=>wwv_flow_api.id(31841497933788623160)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841519640599624927)
,p_parameter_id=>wwv_flow_api.id(31734933678254518422)
,p_process_id=>wwv_flow_api.id(31841515702920624923)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_MANAGER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734933953657518423)
,p_ws_opers_id=>wwv_flow_api.id(31734930669463518420)
,p_name=>'superproject'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737804769617836969)
,p_parameter_id=>wwv_flow_api.id(31734933953657518423)
,p_process_id=>wwv_flow_api.id(31737795976470836958)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_SUPERPROJECT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841494908962621357)
,p_parameter_id=>wwv_flow_api.id(31734933953657518423)
,p_process_id=>wwv_flow_api.id(31841490628709621353)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_SUPERPROJECT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841512271323623164)
,p_parameter_id=>wwv_flow_api.id(31734933953657518423)
,p_process_id=>wwv_flow_api.id(31841497933788623160)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_SUPERPROJECT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841520006690624927)
,p_parameter_id=>wwv_flow_api.id(31734933953657518423)
,p_process_id=>wwv_flow_api.id(31841515702920624923)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_SUPERPROJECT'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734934253289518423)
,p_ws_opers_id=>wwv_flow_api.id(31734930669463518420)
,p_name=>'department'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737805588506836970)
,p_parameter_id=>wwv_flow_api.id(31734934253289518423)
,p_process_id=>wwv_flow_api.id(31737795976470836958)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_DEPARTMENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841495305309621357)
,p_parameter_id=>wwv_flow_api.id(31734934253289518423)
,p_process_id=>wwv_flow_api.id(31841490628709621353)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_DEPARTMENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841512608689623165)
,p_parameter_id=>wwv_flow_api.id(31734934253289518423)
,p_process_id=>wwv_flow_api.id(31841497933788623160)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_DEPARTMENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841520430390624928)
,p_parameter_id=>wwv_flow_api.id(31734934253289518423)
,p_process_id=>wwv_flow_api.id(31841515702920624923)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_DEPARTMENT'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734934598500518423)
,p_ws_opers_id=>wwv_flow_api.id(31734930669463518420)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737806391711836971)
,p_parameter_id=>wwv_flow_api.id(31734934598500518423)
,p_process_id=>wwv_flow_api.id(31737795976470836958)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841495782281621358)
,p_parameter_id=>wwv_flow_api.id(31734934598500518423)
,p_process_id=>wwv_flow_api.id(31841490628709621353)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841513028964623165)
,p_parameter_id=>wwv_flow_api.id(31734934598500518423)
,p_process_id=>wwv_flow_api.id(31841497933788623160)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841520809457624928)
,p_parameter_id=>wwv_flow_api.id(31734934598500518423)
,p_process_id=>wwv_flow_api.id(31841515702920624923)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_QUERY4'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734934868761518423)
,p_ws_opers_id=>wwv_flow_api.id(31734930669463518420)
,p_name=>'query2'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737807153895836972)
,p_parameter_id=>wwv_flow_api.id(31734934868761518423)
,p_process_id=>wwv_flow_api.id(31737795976470836958)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841496166403621359)
,p_parameter_id=>wwv_flow_api.id(31734934868761518423)
,p_process_id=>wwv_flow_api.id(31841490628709621353)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841513471942623165)
,p_parameter_id=>wwv_flow_api.id(31734934868761518423)
,p_process_id=>wwv_flow_api.id(31841497933788623160)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841521296523624928)
,p_parameter_id=>wwv_flow_api.id(31734934868761518423)
,p_process_id=>wwv_flow_api.id(31841515702920624923)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_QUERY2'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734935174647518423)
,p_ws_opers_id=>wwv_flow_api.id(31734930669463518420)
,p_name=>'query3'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737807931321836973)
,p_parameter_id=>wwv_flow_api.id(31734935174647518423)
,p_process_id=>wwv_flow_api.id(31737795976470836958)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841496511672621359)
,p_parameter_id=>wwv_flow_api.id(31734935174647518423)
,p_process_id=>wwv_flow_api.id(31841490628709621353)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841513844845623166)
,p_parameter_id=>wwv_flow_api.id(31734935174647518423)
,p_process_id=>wwv_flow_api.id(31841497933788623160)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841521686886624929)
,p_parameter_id=>wwv_flow_api.id(31734935174647518423)
,p_process_id=>wwv_flow_api.id(31841515702920624923)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_QUERY3'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734935434854518424)
,p_ws_opers_id=>wwv_flow_api.id(31734930669463518420)
,p_name=>'query4'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737808775826836974)
,p_parameter_id=>wwv_flow_api.id(31734935434854518424)
,p_process_id=>wwv_flow_api.id(31737795976470836958)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841496944230621360)
,p_parameter_id=>wwv_flow_api.id(31734935434854518424)
,p_process_id=>wwv_flow_api.id(31841490628709621353)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841514294320623169)
,p_parameter_id=>wwv_flow_api.id(31734935434854518424)
,p_process_id=>wwv_flow_api.id(31841497933788623160)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841522064737624930)
,p_parameter_id=>wwv_flow_api.id(31734935434854518424)
,p_process_id=>wwv_flow_api.id(31841515702920624923)
,p_map_type=>'ITEM'
,p_parm_value=>'P28_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734935734496518426)
,p_ws_opers_id=>wwv_flow_api.id(31734930669463518420)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/current_project
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31734956032872526950)
,p_name=>'Current Project'
,p_url=>'aevum.cs.utexas.edu:6020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31734956256037526950)
,p_ws_id=>wwv_flow_api.id(31734956032872526950)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734956503303526950)
,p_ws_opers_id=>wwv_flow_api.id(31734956256037526950)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737891060352226679)
,p_parameter_id=>wwv_flow_api.id(31734956503303526950)
,p_process_id=>wwv_flow_api.id(31737890268281226676)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841538763041629878)
,p_parameter_id=>wwv_flow_api.id(31734956503303526950)
,p_process_id=>wwv_flow_api.id(31841538427675629877)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841558580868255773)
,p_parameter_id=>wwv_flow_api.id(31734956503303526950)
,p_process_id=>wwv_flow_api.id(31841558224046255772)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841567381662257227)
,p_parameter_id=>wwv_flow_api.id(31734956503303526950)
,p_process_id=>wwv_flow_api.id(31841567048288257226)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734956896791526951)
,p_ws_opers_id=>wwv_flow_api.id(31734956256037526950)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737891879434226680)
,p_parameter_id=>wwv_flow_api.id(31734956896791526951)
,p_process_id=>wwv_flow_api.id(31737890268281226676)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841539120035629878)
,p_parameter_id=>wwv_flow_api.id(31734956896791526951)
,p_process_id=>wwv_flow_api.id(31841538427675629877)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841558967258255773)
,p_parameter_id=>wwv_flow_api.id(31734956896791526951)
,p_process_id=>wwv_flow_api.id(31841558224046255772)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841567756276257227)
,p_parameter_id=>wwv_flow_api.id(31734956896791526951)
,p_process_id=>wwv_flow_api.id(31841567048288257226)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734957158707526951)
,p_ws_opers_id=>wwv_flow_api.id(31734956256037526950)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737892681982226683)
,p_parameter_id=>wwv_flow_api.id(31734957158707526951)
,p_process_id=>wwv_flow_api.id(31737890268281226676)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841539564856629878)
,p_parameter_id=>wwv_flow_api.id(31734957158707526951)
,p_process_id=>wwv_flow_api.id(31841538427675629877)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841559397479255774)
,p_parameter_id=>wwv_flow_api.id(31734957158707526951)
,p_process_id=>wwv_flow_api.id(31841558224046255772)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841568175074257228)
,p_parameter_id=>wwv_flow_api.id(31734957158707526951)
,p_process_id=>wwv_flow_api.id(31841567048288257226)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734957480507526951)
,p_ws_opers_id=>wwv_flow_api.id(31734956256037526950)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737893482661226686)
,p_parameter_id=>wwv_flow_api.id(31734957480507526951)
,p_process_id=>wwv_flow_api.id(31737890268281226676)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841539972083629881)
,p_parameter_id=>wwv_flow_api.id(31734957480507526951)
,p_process_id=>wwv_flow_api.id(31841538427675629877)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841559760012255774)
,p_parameter_id=>wwv_flow_api.id(31734957480507526951)
,p_process_id=>wwv_flow_api.id(31841558224046255772)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841568517932257228)
,p_parameter_id=>wwv_flow_api.id(31734957480507526951)
,p_process_id=>wwv_flow_api.id(31841567048288257226)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734957718574526951)
,p_ws_opers_id=>wwv_flow_api.id(31734956256037526950)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737894260886226687)
,p_parameter_id=>wwv_flow_api.id(31734957718574526951)
,p_process_id=>wwv_flow_api.id(31737890268281226676)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841540385453629882)
,p_parameter_id=>wwv_flow_api.id(31734957718574526951)
,p_process_id=>wwv_flow_api.id(31841538427675629877)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841560124522255774)
,p_parameter_id=>wwv_flow_api.id(31734957718574526951)
,p_process_id=>wwv_flow_api.id(31841558224046255772)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841568958685257228)
,p_parameter_id=>wwv_flow_api.id(31734957718574526951)
,p_process_id=>wwv_flow_api.id(31841567048288257226)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734968082691526952)
,p_ws_opers_id=>wwv_flow_api.id(31734956256037526950)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737895057942226688)
,p_parameter_id=>wwv_flow_api.id(31734968082691526952)
,p_process_id=>wwv_flow_api.id(31737890268281226676)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841540752872629883)
,p_parameter_id=>wwv_flow_api.id(31734968082691526952)
,p_process_id=>wwv_flow_api.id(31841538427675629877)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841560521226255774)
,p_parameter_id=>wwv_flow_api.id(31734968082691526952)
,p_process_id=>wwv_flow_api.id(31841558224046255772)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841569327806257229)
,p_parameter_id=>wwv_flow_api.id(31734968082691526952)
,p_process_id=>wwv_flow_api.id(31841567048288257226)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734968351318526952)
,p_ws_opers_id=>wwv_flow_api.id(31734956256037526950)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737895813957226688)
,p_parameter_id=>wwv_flow_api.id(31734968351318526952)
,p_process_id=>wwv_flow_api.id(31737890268281226676)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841541154186629883)
,p_parameter_id=>wwv_flow_api.id(31734968351318526952)
,p_process_id=>wwv_flow_api.id(31841538427675629877)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841560980052255775)
,p_parameter_id=>wwv_flow_api.id(31734968351318526952)
,p_process_id=>wwv_flow_api.id(31841558224046255772)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841569717518257229)
,p_parameter_id=>wwv_flow_api.id(31734968351318526952)
,p_process_id=>wwv_flow_api.id(31841567048288257226)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734968695499526952)
,p_ws_opers_id=>wwv_flow_api.id(31734956256037526950)
,p_name=>'projectno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737896644286226690)
,p_parameter_id=>wwv_flow_api.id(31734968695499526952)
,p_process_id=>wwv_flow_api.id(31737890268281226676)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PROJECTNO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841541585285629883)
,p_parameter_id=>wwv_flow_api.id(31734968695499526952)
,p_process_id=>wwv_flow_api.id(31841538427675629877)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PROJECTNO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841561322142255775)
,p_parameter_id=>wwv_flow_api.id(31734968695499526952)
,p_process_id=>wwv_flow_api.id(31841558224046255772)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PROJECTNO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841570100649257229)
,p_parameter_id=>wwv_flow_api.id(31734968695499526952)
,p_process_id=>wwv_flow_api.id(31841567048288257226)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PROJECTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734968963554526952)
,p_ws_opers_id=>wwv_flow_api.id(31734956256037526950)
,p_name=>'projecttitle'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737897403689226691)
,p_parameter_id=>wwv_flow_api.id(31734968963554526952)
,p_process_id=>wwv_flow_api.id(31737890268281226676)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PROJECTTITLE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841541983553629883)
,p_parameter_id=>wwv_flow_api.id(31734968963554526952)
,p_process_id=>wwv_flow_api.id(31841538427675629877)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PROJECTTITLE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841561717633255776)
,p_parameter_id=>wwv_flow_api.id(31734968963554526952)
,p_process_id=>wwv_flow_api.id(31841558224046255772)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PROJECTTITLE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841570549690257229)
,p_parameter_id=>wwv_flow_api.id(31734968963554526952)
,p_process_id=>wwv_flow_api.id(31841567048288257226)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PROJECTTITLE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734969251629526953)
,p_ws_opers_id=>wwv_flow_api.id(31734956256037526950)
,p_name=>'projectactive'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737898276096226691)
,p_parameter_id=>wwv_flow_api.id(31734969251629526953)
,p_process_id=>wwv_flow_api.id(31737890268281226676)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PROJECTACTIVE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841542365170629884)
,p_parameter_id=>wwv_flow_api.id(31734969251629526953)
,p_process_id=>wwv_flow_api.id(31841538427675629877)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PROJECTACTIVE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841562174545255776)
,p_parameter_id=>wwv_flow_api.id(31734969251629526953)
,p_process_id=>wwv_flow_api.id(31841558224046255772)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PROJECTACTIVE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841570938992257230)
,p_parameter_id=>wwv_flow_api.id(31734969251629526953)
,p_process_id=>wwv_flow_api.id(31841567048288257226)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_PROJECTACTIVE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734969502277526953)
,p_ws_opers_id=>wwv_flow_api.id(31734956256037526950)
,p_name=>'manager'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737899088179226692)
,p_parameter_id=>wwv_flow_api.id(31734969502277526953)
,p_process_id=>wwv_flow_api.id(31737890268281226676)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841542795464629884)
,p_parameter_id=>wwv_flow_api.id(31734969502277526953)
,p_process_id=>wwv_flow_api.id(31841538427675629877)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841562570752255776)
,p_parameter_id=>wwv_flow_api.id(31734969502277526953)
,p_process_id=>wwv_flow_api.id(31841558224046255772)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841571392335257230)
,p_parameter_id=>wwv_flow_api.id(31734969502277526953)
,p_process_id=>wwv_flow_api.id(31841567048288257226)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_MANAGER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734969884256526953)
,p_ws_opers_id=>wwv_flow_api.id(31734956256037526950)
,p_name=>'superproject'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737899877355226693)
,p_parameter_id=>wwv_flow_api.id(31734969884256526953)
,p_process_id=>wwv_flow_api.id(31737890268281226676)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_SUPERPROJECT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841543120017629884)
,p_parameter_id=>wwv_flow_api.id(31734969884256526953)
,p_process_id=>wwv_flow_api.id(31841538427675629877)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_SUPERPROJECT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841562930783255777)
,p_parameter_id=>wwv_flow_api.id(31734969884256526953)
,p_process_id=>wwv_flow_api.id(31841558224046255772)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_SUPERPROJECT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841571709617257230)
,p_parameter_id=>wwv_flow_api.id(31734969884256526953)
,p_process_id=>wwv_flow_api.id(31841567048288257226)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_SUPERPROJECT'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734970194778526953)
,p_ws_opers_id=>wwv_flow_api.id(31734956256037526950)
,p_name=>'department'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737900600587226693)
,p_parameter_id=>wwv_flow_api.id(31734970194778526953)
,p_process_id=>wwv_flow_api.id(31737890268281226676)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_DEPARTMENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841543500545629885)
,p_parameter_id=>wwv_flow_api.id(31734970194778526953)
,p_process_id=>wwv_flow_api.id(31841538427675629877)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_DEPARTMENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841563390556255777)
,p_parameter_id=>wwv_flow_api.id(31734970194778526953)
,p_process_id=>wwv_flow_api.id(31841558224046255772)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_DEPARTMENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841572125025257231)
,p_parameter_id=>wwv_flow_api.id(31734970194778526953)
,p_process_id=>wwv_flow_api.id(31841567048288257226)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_DEPARTMENT'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734970488770526954)
,p_ws_opers_id=>wwv_flow_api.id(31734956256037526950)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737901427726226694)
,p_parameter_id=>wwv_flow_api.id(31734970488770526954)
,p_process_id=>wwv_flow_api.id(31737890268281226676)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841543985653629885)
,p_parameter_id=>wwv_flow_api.id(31734970488770526954)
,p_process_id=>wwv_flow_api.id(31841538427675629877)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841563710891255777)
,p_parameter_id=>wwv_flow_api.id(31734970488770526954)
,p_process_id=>wwv_flow_api.id(31841558224046255772)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841572578109257232)
,p_parameter_id=>wwv_flow_api.id(31734970488770526954)
,p_process_id=>wwv_flow_api.id(31841567048288257226)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_QUERY4'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734970700527526954)
,p_ws_opers_id=>wwv_flow_api.id(31734956256037526950)
,p_name=>'query2'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737902245094226695)
,p_parameter_id=>wwv_flow_api.id(31734970700527526954)
,p_process_id=>wwv_flow_api.id(31737890268281226676)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841544334262629885)
,p_parameter_id=>wwv_flow_api.id(31734970700527526954)
,p_process_id=>wwv_flow_api.id(31841538427675629877)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841564113826255777)
,p_parameter_id=>wwv_flow_api.id(31734970700527526954)
,p_process_id=>wwv_flow_api.id(31841558224046255772)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841572963521257232)
,p_parameter_id=>wwv_flow_api.id(31734970700527526954)
,p_process_id=>wwv_flow_api.id(31841567048288257226)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_QUERY2'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734971013759526954)
,p_ws_opers_id=>wwv_flow_api.id(31734956256037526950)
,p_name=>'query3'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737903050426226695)
,p_parameter_id=>wwv_flow_api.id(31734971013759526954)
,p_process_id=>wwv_flow_api.id(31737890268281226676)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841544781512629885)
,p_parameter_id=>wwv_flow_api.id(31734971013759526954)
,p_process_id=>wwv_flow_api.id(31841538427675629877)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841564562536255778)
,p_parameter_id=>wwv_flow_api.id(31734971013759526954)
,p_process_id=>wwv_flow_api.id(31841558224046255772)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841573374772257232)
,p_parameter_id=>wwv_flow_api.id(31734971013759526954)
,p_process_id=>wwv_flow_api.id(31841567048288257226)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_QUERY3'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734971339365526954)
,p_ws_opers_id=>wwv_flow_api.id(31734956256037526950)
,p_name=>'query4'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31737903893598226696)
,p_parameter_id=>wwv_flow_api.id(31734971339365526954)
,p_process_id=>wwv_flow_api.id(31737890268281226676)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841545180710629886)
,p_parameter_id=>wwv_flow_api.id(31734971339365526954)
,p_process_id=>wwv_flow_api.id(31841538427675629877)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841564940471255778)
,p_parameter_id=>wwv_flow_api.id(31734971339365526954)
,p_process_id=>wwv_flow_api.id(31841558224046255772)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841573714813257232)
,p_parameter_id=>wwv_flow_api.id(31734971339365526954)
,p_process_id=>wwv_flow_api.id(31841567048288257226)
,p_map_type=>'ITEM'
,p_parm_value=>'P29_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31734971662667526955)
,p_ws_opers_id=>wwv_flow_api.id(31734956256037526950)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/previous_project
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31735074677956554797)
,p_name=>'Previous Project'
,p_url=>'aevum.cs.utexas.edu:6020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31735074865573554797)
,p_ws_id=>wwv_flow_api.id(31735074677956554797)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735075122877554798)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738003648997874208)
,p_parameter_id=>wwv_flow_api.id(31735075122877554798)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841601413905640481)
,p_parameter_id=>wwv_flow_api.id(31735075122877554798)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841634258367268146)
,p_parameter_id=>wwv_flow_api.id(31735075122877554798)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841639590444641489)
,p_parameter_id=>wwv_flow_api.id(31735075122877554798)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735075423620554798)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738004480334874210)
,p_parameter_id=>wwv_flow_api.id(31735075423620554798)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841601845175640482)
,p_parameter_id=>wwv_flow_api.id(31735075423620554798)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841634646790268146)
,p_parameter_id=>wwv_flow_api.id(31735075423620554798)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841639984033641489)
,p_parameter_id=>wwv_flow_api.id(31735075423620554798)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735075788296554798)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738005270217874211)
,p_parameter_id=>wwv_flow_api.id(31735075788296554798)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841602268026640482)
,p_parameter_id=>wwv_flow_api.id(31735075788296554798)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841635019865268147)
,p_parameter_id=>wwv_flow_api.id(31735075788296554798)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841640324438641490)
,p_parameter_id=>wwv_flow_api.id(31735075788296554798)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735076075409554799)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738006008641874212)
,p_parameter_id=>wwv_flow_api.id(31735076075409554799)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841602633751640482)
,p_parameter_id=>wwv_flow_api.id(31735076075409554799)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841635494176268147)
,p_parameter_id=>wwv_flow_api.id(31735076075409554799)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841640795842641490)
,p_parameter_id=>wwv_flow_api.id(31735076075409554799)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735076337570554799)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738006862117874213)
,p_parameter_id=>wwv_flow_api.id(31735076337570554799)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841603043686640483)
,p_parameter_id=>wwv_flow_api.id(31735076337570554799)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841635879769268147)
,p_parameter_id=>wwv_flow_api.id(31735076337570554799)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841641159866641490)
,p_parameter_id=>wwv_flow_api.id(31735076337570554799)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735076641264554799)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738007604565874213)
,p_parameter_id=>wwv_flow_api.id(31735076641264554799)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841603432473640483)
,p_parameter_id=>wwv_flow_api.id(31735076641264554799)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841636231207268147)
,p_parameter_id=>wwv_flow_api.id(31735076641264554799)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841641509732641491)
,p_parameter_id=>wwv_flow_api.id(31735076641264554799)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735076972156554799)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738028491878874214)
,p_parameter_id=>wwv_flow_api.id(31735076972156554799)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841603885740640483)
,p_parameter_id=>wwv_flow_api.id(31735076972156554799)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841636657001268148)
,p_parameter_id=>wwv_flow_api.id(31735076972156554799)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841641989792641491)
,p_parameter_id=>wwv_flow_api.id(31735076972156554799)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735077225327554800)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'projectno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738029299425874215)
,p_parameter_id=>wwv_flow_api.id(31735077225327554800)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_PROJECTNO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841604261508640484)
,p_parameter_id=>wwv_flow_api.id(31735077225327554800)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_PROJECTNO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841637023111268148)
,p_parameter_id=>wwv_flow_api.id(31735077225327554800)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_PROJECTNO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841642323935641491)
,p_parameter_id=>wwv_flow_api.id(31735077225327554800)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_PROJECTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735077529971554800)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'projecttitle'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738030063279874215)
,p_parameter_id=>wwv_flow_api.id(31735077529971554800)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_PROJECTTITLE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841604647508640484)
,p_parameter_id=>wwv_flow_api.id(31735077529971554800)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_PROJECTTITLE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841637483301268149)
,p_parameter_id=>wwv_flow_api.id(31735077529971554800)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_PROJECTTITLE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841642766650641492)
,p_parameter_id=>wwv_flow_api.id(31735077529971554800)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_PROJECTTITLE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735077862632554800)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'enddatemonth'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738030898760874216)
,p_parameter_id=>wwv_flow_api.id(31735077862632554800)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_ENDDATEMONTH'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841605066936640484)
,p_parameter_id=>wwv_flow_api.id(31735077862632554800)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_ENDDATEMONTH'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841637879845268149)
,p_parameter_id=>wwv_flow_api.id(31735077862632554800)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_ENDDATEMONTH'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841643115225641492)
,p_parameter_id=>wwv_flow_api.id(31735077862632554800)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_ENDDATEMONTH'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735078110316554800)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'enddateday'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738031671401874217)
,p_parameter_id=>wwv_flow_api.id(31735078110316554800)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_ENDDATEDAY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841605447286640485)
,p_parameter_id=>wwv_flow_api.id(31735078110316554800)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_ENDDATEDAY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841643549424641493)
,p_parameter_id=>wwv_flow_api.id(31735078110316554800)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_ENDDATEDAY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841648261433268150)
,p_parameter_id=>wwv_flow_api.id(31735078110316554800)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_ENDDATEDAY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735078421107554800)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'enddateyear'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738032415776874217)
,p_parameter_id=>wwv_flow_api.id(31735078421107554800)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_ENDDATEYEAR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841605844773640485)
,p_parameter_id=>wwv_flow_api.id(31735078421107554800)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_ENDDATEYEAR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841643949169641493)
,p_parameter_id=>wwv_flow_api.id(31735078421107554800)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_ENDDATEYEAR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841648676203268150)
,p_parameter_id=>wwv_flow_api.id(31735078421107554800)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_ENDDATEYEAR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735078772677554801)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'manager'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738033295905874218)
,p_parameter_id=>wwv_flow_api.id(31735078772677554801)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841606202399640485)
,p_parameter_id=>wwv_flow_api.id(31735078772677554801)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841644303142641493)
,p_parameter_id=>wwv_flow_api.id(31735078772677554801)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841649030222268150)
,p_parameter_id=>wwv_flow_api.id(31735078772677554801)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_MANAGER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735079037587554801)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'superproject'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738034044184874219)
,p_parameter_id=>wwv_flow_api.id(31735079037587554801)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_SUPERPROJECT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841606675744640487)
,p_parameter_id=>wwv_flow_api.id(31735079037587554801)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_SUPERPROJECT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841644728037641494)
,p_parameter_id=>wwv_flow_api.id(31735079037587554801)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_SUPERPROJECT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841649404333268150)
,p_parameter_id=>wwv_flow_api.id(31735079037587554801)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_SUPERPROJECT'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735079302146554801)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'department'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738034870945874219)
,p_parameter_id=>wwv_flow_api.id(31735079302146554801)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_DEPARTMENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841607036237640487)
,p_parameter_id=>wwv_flow_api.id(31735079302146554801)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_DEPARTMENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841645133935641494)
,p_parameter_id=>wwv_flow_api.id(31735079302146554801)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_DEPARTMENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841649809890268151)
,p_parameter_id=>wwv_flow_api.id(31735079302146554801)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_DEPARTMENT'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735079619655554802)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738035642482874220)
,p_parameter_id=>wwv_flow_api.id(31735079619655554802)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841607477525640487)
,p_parameter_id=>wwv_flow_api.id(31735079619655554802)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841645509245641494)
,p_parameter_id=>wwv_flow_api.id(31735079619655554802)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841650233237268151)
,p_parameter_id=>wwv_flow_api.id(31735079619655554802)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_QUERY4'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735079980458554802)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'query2'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738036414613874221)
,p_parameter_id=>wwv_flow_api.id(31735079980458554802)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841607878031640487)
,p_parameter_id=>wwv_flow_api.id(31735079980458554802)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841645967140641496)
,p_parameter_id=>wwv_flow_api.id(31735079980458554802)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841650687574268151)
,p_parameter_id=>wwv_flow_api.id(31735079980458554802)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_QUERY2'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735080299170554802)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'query3'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738037286828874221)
,p_parameter_id=>wwv_flow_api.id(31735080299170554802)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841638214958640488)
,p_parameter_id=>wwv_flow_api.id(31735080299170554802)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_QUERY3'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841646351553641496)
,p_parameter_id=>wwv_flow_api.id(31735080299170554802)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841651055406268152)
,p_parameter_id=>wwv_flow_api.id(31735080299170554802)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_QUERY3'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735080585928554802)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'query4'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738038039608874222)
,p_parameter_id=>wwv_flow_api.id(31735080585928554802)
,p_process_id=>wwv_flow_api.id(31738002893904874207)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841638621384640489)
,p_parameter_id=>wwv_flow_api.id(31735080585928554802)
,p_process_id=>wwv_flow_api.id(31841601125267640480)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841646721976641497)
,p_parameter_id=>wwv_flow_api.id(31735080585928554802)
,p_process_id=>wwv_flow_api.id(31841639252653641488)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_QUERY4'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31841651444263268152)
,p_parameter_id=>wwv_flow_api.id(31735080585928554802)
,p_process_id=>wwv_flow_api.id(31841633941502268144)
,p_map_type=>'ITEM'
,p_parm_value=>'P30_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735080832643554802)
,p_ws_opers_id=>wwv_flow_api.id(31735074865573554797)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/department
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31735084426122562599)
,p_name=>'Department'
,p_url=>'aevum.cs.utexas.edu:6020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_07=>'\n'
,p_static_parm_08=>','
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31735084617147562599)
,p_ws_id=>wwv_flow_api.id(31735084426122562599)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735084927225562600)
,p_ws_opers_id=>wwv_flow_api.id(31735084617147562599)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738094092872887864)
,p_parameter_id=>wwv_flow_api.id(31735084927225562600)
,p_process_id=>wwv_flow_api.id(31738093200928887862)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735085203995562600)
,p_ws_opers_id=>wwv_flow_api.id(31735084617147562599)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738094862083887866)
,p_parameter_id=>wwv_flow_api.id(31735085203995562600)
,p_process_id=>wwv_flow_api.id(31738093200928887862)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735085598818562600)
,p_ws_opers_id=>wwv_flow_api.id(31735084617147562599)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738095689438887866)
,p_parameter_id=>wwv_flow_api.id(31735085598818562600)
,p_process_id=>wwv_flow_api.id(31738093200928887862)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735085889843562601)
,p_ws_opers_id=>wwv_flow_api.id(31735084617147562599)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738096430661887867)
,p_parameter_id=>wwv_flow_api.id(31735085889843562601)
,p_process_id=>wwv_flow_api.id(31738093200928887862)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735086157774562601)
,p_ws_opers_id=>wwv_flow_api.id(31735084617147562599)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738097275756887867)
,p_parameter_id=>wwv_flow_api.id(31735086157774562601)
,p_process_id=>wwv_flow_api.id(31738093200928887862)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735086462189562601)
,p_ws_opers_id=>wwv_flow_api.id(31735084617147562599)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738118010512887868)
,p_parameter_id=>wwv_flow_api.id(31735086462189562601)
,p_process_id=>wwv_flow_api.id(31738093200928887862)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735086736061562601)
,p_ws_opers_id=>wwv_flow_api.id(31735084617147562599)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738118828994887869)
,p_parameter_id=>wwv_flow_api.id(31735086736061562601)
,p_process_id=>wwv_flow_api.id(31738093200928887862)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735087011645562601)
,p_ws_opers_id=>wwv_flow_api.id(31735084617147562599)
,p_name=>'deptno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738119698922887870)
,p_parameter_id=>wwv_flow_api.id(31735087011645562601)
,p_process_id=>wwv_flow_api.id(31738093200928887862)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_DEPTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735087376514562602)
,p_ws_opers_id=>wwv_flow_api.id(31735084617147562599)
,p_name=>'deptname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738120480998887870)
,p_parameter_id=>wwv_flow_api.id(31735087376514562602)
,p_process_id=>wwv_flow_api.id(31738093200928887862)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_DEPTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735087623284562602)
,p_ws_opers_id=>wwv_flow_api.id(31735084617147562599)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31738121284610887871)
,p_parameter_id=>wwv_flow_api.id(31735087623284562602)
,p_process_id=>wwv_flow_api.id(31738093200928887862)
,p_map_type=>'ITEM'
,p_parm_value=>'P31_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31735087988958562602)
,p_ws_opers_id=>wwv_flow_api.id(31735084617147562599)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/family
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31841995829605316341)
,p_name=>'Family'
,p_url=>'aevum.cs.utexas.edu:6020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31841996015196316342)
,p_ws_id=>wwv_flow_api.id(31841995829605316341)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841996379812316344)
,p_ws_opers_id=>wwv_flow_api.id(31841996015196316342)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842143640053356993)
,p_parameter_id=>wwv_flow_api.id(31841996379812316344)
,p_process_id=>wwv_flow_api.id(31842142861052356992)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841996681065316344)
,p_ws_opers_id=>wwv_flow_api.id(31841996015196316342)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842144455117356994)
,p_parameter_id=>wwv_flow_api.id(31841996681065316344)
,p_process_id=>wwv_flow_api.id(31842142861052356992)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841996947413316344)
,p_ws_opers_id=>wwv_flow_api.id(31841996015196316342)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842145287716356994)
,p_parameter_id=>wwv_flow_api.id(31841996947413316344)
,p_process_id=>wwv_flow_api.id(31842142861052356992)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841997270212316345)
,p_ws_opers_id=>wwv_flow_api.id(31841996015196316342)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842146051924356995)
,p_parameter_id=>wwv_flow_api.id(31841997270212316345)
,p_process_id=>wwv_flow_api.id(31842142861052356992)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841997577473316345)
,p_ws_opers_id=>wwv_flow_api.id(31841996015196316342)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842146896828356995)
,p_parameter_id=>wwv_flow_api.id(31841997577473316345)
,p_process_id=>wwv_flow_api.id(31842142861052356992)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841997820526316345)
,p_ws_opers_id=>wwv_flow_api.id(31841996015196316342)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842147606944356996)
,p_parameter_id=>wwv_flow_api.id(31841997820526316345)
,p_process_id=>wwv_flow_api.id(31842142861052356992)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841998168219316345)
,p_ws_opers_id=>wwv_flow_api.id(31841996015196316342)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842158431824356997)
,p_parameter_id=>wwv_flow_api.id(31841998168219316345)
,p_process_id=>wwv_flow_api.id(31842142861052356992)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841998406316316346)
,p_ws_opers_id=>wwv_flow_api.id(31841996015196316342)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842159257659356997)
,p_parameter_id=>wwv_flow_api.id(31841998406316316346)
,p_process_id=>wwv_flow_api.id(31842142861052356992)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841998754435316346)
,p_ws_opers_id=>wwv_flow_api.id(31841996015196316342)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842160062568356998)
,p_parameter_id=>wwv_flow_api.id(31841998754435316346)
,p_process_id=>wwv_flow_api.id(31842142861052356992)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_PERSONID2'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841999035885316347)
,p_ws_opers_id=>wwv_flow_api.id(31841996015196316342)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842160841931356999)
,p_parameter_id=>wwv_flow_api.id(31841999035885316347)
,p_process_id=>wwv_flow_api.id(31842142861052356992)
,p_map_type=>'ITEM'
,p_parm_value=>'P33_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31841999355744316347)
,p_ws_opers_id=>wwv_flow_api.id(31841996015196316342)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/team
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(31842019058557324333)
,p_name=>'Team'
,p_url=>'aevum.cs.utexas.edu:6020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(31842019264067324333)
,p_ws_id=>wwv_flow_api.id(31842019058557324333)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842019564748324335)
,p_ws_opers_id=>wwv_flow_api.id(31842019264067324333)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842365903298805761)
,p_parameter_id=>wwv_flow_api.id(31842019564748324335)
,p_process_id=>wwv_flow_api.id(31842365147975805755)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842019882390324335)
,p_ws_opers_id=>wwv_flow_api.id(31842019264067324333)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842366600100805762)
,p_parameter_id=>wwv_flow_api.id(31842019882390324335)
,p_process_id=>wwv_flow_api.id(31842365147975805755)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842020167286324335)
,p_ws_opers_id=>wwv_flow_api.id(31842019264067324333)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842367432983805763)
,p_parameter_id=>wwv_flow_api.id(31842020167286324335)
,p_process_id=>wwv_flow_api.id(31842365147975805755)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842020487450324335)
,p_ws_opers_id=>wwv_flow_api.id(31842019264067324333)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842488213989805764)
,p_parameter_id=>wwv_flow_api.id(31842020487450324335)
,p_process_id=>wwv_flow_api.id(31842365147975805755)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842020773044324335)
,p_ws_opers_id=>wwv_flow_api.id(31842019264067324333)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842489038679805764)
,p_parameter_id=>wwv_flow_api.id(31842020773044324335)
,p_process_id=>wwv_flow_api.id(31842365147975805755)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842021007003324336)
,p_ws_opers_id=>wwv_flow_api.id(31842019264067324333)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842489811184805765)
,p_parameter_id=>wwv_flow_api.id(31842021007003324336)
,p_process_id=>wwv_flow_api.id(31842365147975805755)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842021305566324336)
,p_ws_opers_id=>wwv_flow_api.id(31842019264067324333)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842490612471805766)
,p_parameter_id=>wwv_flow_api.id(31842021305566324336)
,p_process_id=>wwv_flow_api.id(31842365147975805755)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842021635091324336)
,p_ws_opers_id=>wwv_flow_api.id(31842019264067324333)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842491495578805766)
,p_parameter_id=>wwv_flow_api.id(31842021635091324336)
,p_process_id=>wwv_flow_api.id(31842365147975805755)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842021962456324336)
,p_ws_opers_id=>wwv_flow_api.id(31842019264067324333)
,p_name=>'projectno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842492245707805767)
,p_parameter_id=>wwv_flow_api.id(31842021962456324336)
,p_process_id=>wwv_flow_api.id(31842365147975805755)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_PROJECTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842022251320324337)
,p_ws_opers_id=>wwv_flow_api.id(31842019264067324333)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(31842493039922805769)
,p_parameter_id=>wwv_flow_api.id(31842022251320324337)
,p_process_id=>wwv_flow_api.id(31842365147975805755)
,p_map_type=>'ITEM'
,p_parm_value=>'P34_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(31842022543991324337)
,p_ws_opers_id=>wwv_flow_api.id(31842019264067324333)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
