<cfoutput>
<tr>
	<td colspan="2">
		<cfif cs.show_bottom_part AND cs.button_basket>
			<a href="##" onclick="loadcontent('thedropbasket','#myself##xfa.tobasket#&file_id=#attributes.file_id#-#attributes.cf_show#&thetype=#attributes.file_id#-#attributes.cf_show#');flash_footer();">
				<div style="float:left;">
					<img src="#dynpath#/global/host/dam/images/basket-put.png" width="16" height="16" border="0" style="padding-right:3px;" />
				</div>
				<div style="float:left;padding-right:10px;">#defaultsObj.trans("put_in_basket")#</div>
			</a>
		</cfif>
		<cfif cs.button_send_email>
			<a href="##" onclick="showwindow('#myself##xfa.sendemail#&file_id=#attributes.file_id#&thetype=#attributes.cf_show#','#defaultsObj.trans("send_with_email")#',600,2);return false;">
				<div style="float:left;">
					<img src="#dynpath#/global/host/dam/images/mail-message-new-3.png" width="16" height="16" border="0" style="padding-right:3px;" />
				</div>
				<div style="float:left;padding-right:10px;">#defaultsObj.trans("send_with_email")#</div>
			</a>
		</cfif>
		<cfif qry_detail.detail.link_path_url NEQ "url" AND cs.button_send_ftp>
			<a href="##" onclick="showwindow('#myself##xfa.sendftp#&file_id=#attributes.file_id#&thetype=#attributes.cf_show#','#defaultsObj.trans("send_with_ftp")#',600,2);return false;">
				<div style="float:left;">
					<img src="#dynpath#/global/host/dam/images/go-up-7.png" width="16" height="16" border="0" style="padding-right:3px;" />
				</div>
				<div style="float:left;padding-right:10px;">#defaultsObj.trans("send_with_ftp")#</div>
			</a>
		</cfif>
		<cfif cs.tab_collections AND cs.button_add_to_collection>
			<a href="##" onclick="showwindow('#myself#c.choose_collection&file_id=#attributes.file_id#-#attributes.cf_show#&thetype=#attributes.cf_show#&artofimage=list&artofvideo=&artofaudio=&artoffile=','#defaultsObj.trans("add_to_collection")#',600,2);">
				<div style="float:left;">
					<img src="#dynpath#/global/host/dam/images/picture-link.png" width="16" height="16" border="0" style="padding-right:3px;" />
				</div>
				<div style="float:left;padding-right:10px;">#defaultsObj.trans("add_to_collection")#</div>
			</a>
		</cfif>
		<cfif cs.button_print>
			<a href="##" onclick="showwindow('#myself#ajax.topdf_window&folder_id=#qry_detail.detail.folder_id_r#&kind=detail&thetype=#attributes.cf_show#&file_id=#attributes.file_id#','#defaultsObj.trans("pdf_window_title")#',500,2);return false;">
				<div style="float:left;">
					<img src="#dynpath#/global/host/dam/images/preferences-desktop-printer-2.png" width="16" height="16" border="0" style="padding-right:3px;" />
				</div>
				<div style="float:left;padding-right:10px;">#defaultsObj.trans("tooltip_print")#</div>
			</a>
		</cfif>
		<!--- Only users with full access can do the following --->
		<cfif attributes.folderaccess EQ "X">
			<!--- Move --->
			<a href="##" onclick="showwindow('#myself#c.move_file&file_id=#attributes.file_id#&type=movefile&thetype=#attributes.cf_show#&folder_id=#qry_detail.detail.folder_id_r#','#defaultsObj.trans("move_file")#',600,2);">
				<div style="float:left;">
					<img src="#dynpath#/global/host/dam/images/application-go.png" width="16" height="16" border="0" style="padding-right:3px;" />
				</div>
				<div style="float:left;padding-right:20px;">#defaultsObj.trans("move_file")#</div>
			</a>
			<!--- Delete --->
			<a href="##" onclick="showwindow('#myself#ajax.remove_record&id=#attributes.file_id#&what=#what#&loaddiv=#loaddiv#&folder_id=#qry_detail.detail.folder_id_r#&showsubfolders=#session.showsubfolders#','#defaultsObj.trans("remove")#',400,2);return false;">
				<div style="float:left;">
					<img src="#dynpath#/global/host/dam/images/trash.png" width="16" height="16" border="0" style="padding-right:3px;" />
				</div>
				<div style="float:left;padding-right:10px;">#defaultsObj.trans("delete_asset")#</div>
			</a>
		</cfif>
	</td>
</tr>
</cfoutput>