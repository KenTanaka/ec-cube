<!--{*
/*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2012 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */
*}-->

<form name="form1" id="form1" method="post" action="">
<input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
<input type="hidden" name="mode" value="edit" />
<input type="hidden" name="classcategory_id" value="<!--{$tpl_classcategory_id}-->" />
<!--{foreach key=key item=item from=$arrHidden}-->
    <input type="hidden" name="<!--{$key}-->" value="<!--{$item|h}-->" />
<!--{/foreach}-->
<div id="products" class="contents-main">

    <table>
        <tr>
            <th><!--{t string="tpl_492"}--></th>
            <td><!--{$tpl_class_name}--></td>
        </tr>
        <tr>
            <th><!--{t string="tpl_493_1" escape="none"}--></th>
            <td>
                <!--{if $arrErr.name}-->
                    <span class="attention"><!--{$arrErr.name}--></span>
                <!--{/if}-->
                <input type="text" name="name" value="<!--{$arrForm.name|h}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" style="" size="30" class="box30" />
                <span class="attention"> <!--{t string="tpl_023" T_FIELD=$smarty.const.STEXT_LEN}--></span>
            </td>
        </tr>
    </table>
    <div class="btn-area">
        <ul>
            <li><a class="btn-action" href="javascript:;" onclick="fnFormModeSubmit('form1', 'edit', '', ''); return false;"><span class="btn-next"><!--{t string="tpl_021"}--></span></a></li>
        </ul>
    </div>

    <table class="list">
        <col />
        <col width="10%" />
        <col width="10%" />
        <col width="15%" />
        <tr>
            <th><!--{t string="tpl_493"}--></th>
            <th class="edit"><!--{t string="tpl_003"}--></th>
            <th class="delete"><!--{t string="tpl_004"}--></th>
            <th><!--{t string="tpl_005"}--></th>
        </tr>
        <!--{section name=cnt loop=$arrClassCat}-->
            <tr style="background:<!--{if $tpl_classcategory_id != $arrClassCat[cnt].classcategory_id}-->#ffffff<!--{else}--><!--{$smarty.const.SELECT_RGB}--><!--{/if}-->;">
                <td><!--{* 規格名 *}--><!--{$arrClassCat[cnt].name|h}--></td>
                <td align="center" >
                    <!--{if $tpl_classcategory_id != $arrClassCat[cnt].classcategory_id}-->
                        <a href="?" onclick="fnModeSubmit('pre_edit','classcategory_id', <!--{$arrClassCat[cnt].classcategory_id}-->); return false;"><!--{t string="tpl_003"}--></a>
                    <!--{else}-->
                        <!--{t string="tpl_026"}-->
                    <!--{/if}-->
                </td>
                <td align="center">
                    <a href="?" onclick="fnModeSubmit('delete','classcategory_id', <!--{$arrClassCat[cnt].classcategory_id}-->); return false;"><!--{t string="tpl_004"}--></a>
                </td>
                <td align="center">
                    <!--{if $smarty.section.cnt.iteration != 1}-->
                        <a href="?" onclick="fnModeSubmit('up','classcategory_id', <!--{$arrClassCat[cnt].classcategory_id}-->); return false;"><!--{t string="tpl_077"}--></a>
                    <!--{/if}-->
                    <!--{if $smarty.section.cnt.iteration != $smarty.section.cnt.last}-->
                        <a href="?" onclick="fnModeSubmit('down','classcategory_id', <!--{$arrClassCat[cnt].classcategory_id}-->); return false;"><!--{t string="tpl_078"}--></a>
                    <!--{/if}-->
                </td>
            </tr>
        <!--{/section}-->
    </table>
    <div class="btn">
        <a class="btn-action" href="./class.php"><span class="btn-prev"><!--{t string="tpl_496"}--></span></a>
    </div>
</div>
</form>
