<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="uft-8">
    
    <link rel="stylesheet" type="text/css" href="css/input.css">
</head>

<body id="confirm">


    <!-- SiteCatalyst tags -->
    <input type="hidden" name="geGeneralTags" id="geServiceId" value="top">
    <input type="hidden" name="geGeneralTags" id="geRegistType" value="Insert">
    <input type="hidden" name="geGeneralTags" id="geRegistStep" value="registration:confirm">

    <input type="hidden" name="geGeneralTags" id="geErrorType" value="">


    <!-- End SiteCatalyst tags -->

    <div align="center">
        <!-- ID title utility -->
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td width="50%">
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td valign="middle">
                                        <h1 style="margin:5px;padding:0"><a href="https://www.rakuten.co.jp/"><img
                                                    src="https://static.id.rakuten.co.jp/static/com/img/id/Rakuten_pc_32px@2x_wm.png"
                                                    alt="楽天" width="129" height="47" border="0"></a></h1>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                    <td width="50%" style="text-align:right; font-size: 13px">
                        <div><a href="https://www.rakuten.co.jp/" target="_top" style="font-weight:bold">楽天市場</a></div>
                        <div style="margin-top:5px;"><a href="https://ichiba.faq.rakuten.net" target="_top">ヘルプ</a>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <!-- /ID title utility -->
        <!-- Header line -->
        <table bgcolor="#bf0000" border="0" cellpadding="0" cellspacing="0" width="100%"
            style="display:block; margin-bottom:10px;">
            <tbody>
                <tr>
                    <td><img src="https://jp.rakuten-static.com/1/im/ci/header/t.gif" alt="" height="3" width="1"></td>
                </tr>
            </tbody>
        </table>
        <!-- /Header line -->

    </div>

    <noscript>
        <p class="noJS">
            JavaScriptが無効の為、一部のコンテンツをご利用いただけません。<br>JavaScriptの設定を有効にしてからご利用いただきますようお願いいたします。※JavaScriptの設定方法は<a
                href="https://ichiba.faq.rakuten.net/detail/000006432">楽天市場お問い合わせQ&A</a>をご覧ください。</p>
    </noscript>

    <div id="container">


        <div id="language" align="right">

            日本語

        </div>


        <div id="contents">

            <h2 class="path">入力内容の確認</h2>


            <div id="step2" class="step">
                <ol class="clear">
                    <li>会員情報の入力</li>
                    <li class="current">入力内容の確認</li>
                    <li>登録完了</li>
                </ol>
            </div>


            <div id="completeArea">
                <div class="question">
                    <p class="message">以下の内容で、会員登録してもよろしいですか？</p>
                    <p style="color:#bf0000;">「<em class="em">登録する</em>」ボタンを押すと登録が完了します。</p>
                </div>
            </div>

            <h3 class="circle">メールアドレス/ユーザーID/パスワード</h3>
            <table class="confirm" cellspacing="0" summary="memberInformation1">



                <tbody>
                    <tr>
                        <th class="headRow" scope="row">
                            メールアドレス
                        </th>
                        <td>
                           <%
			String email = (String) request.getAttribute("email");
			%>
			<%=email%>
			
                        </td>
                    </tr>



                    <tr>
                        <th class="headRow" scope="row">
                            ユーザID
                        </th>
                        <td>
                            <br>
								<%
			String radio_mail = (String) request.getAttribute("radio_mail");
			%>
			<%=radio_mail%>
			
                            （メールアドレスをユーザIDとして使用します）


                        </td>
                    </tr>



                    <tr>
                        <th class="headRow" scope="row">
                            パスワード
                        </th>
                        <td>
								<%
			String p = (String) request.getAttribute("p");
			%>
			<%=p%>
			
                            セキュリティ保護のため、表示していません。


                        </td>
                    </tr>

                </tbody>
            </table>


            <h3 class="circle">お客様の基本情報</h3>
            <table class="confirm" cellspacing="0" summary="memberInformation1">


                <tbody>
                    <tr>
                        <th class="headRow" scope="row">
                            氏名
                        </th>
                        <td>

                           <%
			String lname = (String) request.getAttribute("lname");
			%>
			<%=lname%>
			<%
			String fname = (String) request.getAttribute("fname");
			%>
			<%=fname%>
			

                        </td>
                    </tr>

                    <tr>
                        <th class="headRow" scope="row">
                            氏名（フリガナ）
                        </th>
                        <td>
                         <%
			String lname_kana = (String) request.getAttribute("lname_kana");
			%>
			<%=lname_kana%>
			
				<%
			String fname_kana = (String) request.getAttribute("fname_kana");
			%>
			<%=fname_kana%>
		
                        </td>
                    </tr>



                </tbody>
            </table>


            <form name="DynaForm" method="post" action="./UserInfoConfirmtionController" autocomplete="off">
                <input type="hidden" name="service_id" value="top">
                <input type="submit" value="<<入力画面に戻って変更する" a href="http://localhost:8080/RakuSys/CreateUser">
            </form>

            <br>
            <br>

            <form name="Regist3Form" method="post" action="./UserInfoConfirmtionController" autocomplete="off" id="regist3Form">
                <input type="hidden" name="service_id" value="top">

                <div style="border: 1px solid #000000; padding: 5px; margin: 5px;">


                    <table width="700" border="0" cellspacing="0" cellpadding="0" align="center" valign="middle">
                        <tbody>
                            <tr>
                                <td>
                                    <table width="825px" cellspacing="0" cellpadding="0" align="center"
                                        style="border-collapse:collapse;">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <table width="100%" cellspacing="0" cellpadding="0" align="center"
                                                        style="border-collapse:collapse;">
                                                        <tbody>
                                                            <tr>
                                                                <td style="border-collapse:collapse;padding:6px;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        align="center"
                                                                        style="border-collapse:collapse;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td colspan="2">
                                                                                    <table valign="top">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <img src="https://image.rakuten.co.jp/com/img/thumb/member/img/icn_mail.gif"
                                                                                                        width="24"
                                                                                                        height="17"
                                                                                                        alt=""
                                                                                                        style="padding-right:3px;border:0">
                                                                                                </td>
                                                                                                <td
                                                                                                    style="font-size:14px;">
                                                                                                    <b>楽天会員ニュース（週1回～2回配信）</b>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td colspan="2"
                                                                                    style="font-size:13px;padding:3px 0;">
                                                                                    楽天会員ニュースは、楽天グループのキャンペーンやイベント情報などをご案内するメールマガジンです。<span
                                                                                        style="color:#bf0000;font-weight:bold;">楽天会員情報にご登録されたメールアドレス宛</span>に<span
                                                                                        style="font-weight:bold;">楽天グループ株式会社</span>よりお送りいたします。<br><br>
                                                                                    ※「購読する」をチェック頂いた方には、ご自身のポイント獲得状況が確認できる「ポイント獲得実績のお知らせ」もお届けします。<br>
                                                                                    ※楽天会員ニュース・ポイント獲得実績のお知らせは購読管理ページからいつでも配信停止/再開できます。<br>
                                                                                    <br>
                                                                                    購読を希望されない場合は<span
                                                                                        style="color:#bf0000;font-weight:bold;">「購読する」のチェックを外してください</span>。
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>


                                    <table valign="middle" style="font-size:16px;font-weight:bold;">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <input type="checkbox" name="chk_news" value="true" checked="">
                                                </td>
                                                <td>
                                                    <b>&nbsp;購読する</b>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                </div>




                <p class="submit">
                    上記の情報に間違いがなければ、「<em class="em">登録する</em>」ボタンを押して、登録を完了してください。<br>「入力画面に戻って変更する」ボタンを押すと、入力画面に戻ります。
                </p>
 			
                <p class="submit">
                  <input type="submit" value="&nbsp;&nbsp;&nbsp;&nbsp;登録する&nbsp;&nbsp;&nbsp;&nbsp;">
                 </p>
                 

                <input type="hidden" name="tok"
                    value="WE14kVCcjvxaTk4vJJXHwkclNKEoQ0JQtoFuSuonlV7HXLidZk+5GJ9F8tnzrP9A">

                <input type="hidden" name="pp_version" value="20220331">

                <input type="hidden" name="device_fp" value="fdbece77cad36e9b61e1bb7f70ff16f0"><input type="hidden"
                    name="time_zone" value="-540"><input type="hidden" name="os_info" value="Win32">
            </form>

        </div>

    </div>

    <div align="center">





        <font size="-1"><a href="https://privacy.rakuten.co.jp/" target="_blank">個人情報保護方針</a></font><br>
        <hr size="1" style="display:block;">

        <font size="-1">© Rakuten Group, Inc.</font>


    </div>





    <!-- SiteCatalyst tags -->
    <script type="text/javascript"
        src="//www.rakuten.co.jp/com/rat/id.rakuten.co.jp/plugin/sc_scode_switch.js"></script>
    <script type="text/javascript">var trackingParam = {}; trackingParam.events = "event83";</script>
    <script type="text/javascript" src="//image.rakuten.co.jp/com/js/omniture/s_code.js"></script><img
        src="https://image.rakuten.co.jp/com/img/home/t.gif" name="s_i_rakutendev" style="position:absolute" width="1"
        height="1">
    <script type="text/javascript" src="//www.rakuten.co.jp/com/js/omniture/codetopaste/login/sc_login.js"></script>
    <!-- End SiteCatalyst tags -->

    <!-- Rakuten Analytics Tracker (RAT) tags -->



    <input type="hidden" name="rat" id="ratAccountId" value="429">
    <input type="hidden" name="rat" id="ratServiceId" value="1">
    <input type="hidden" name="rat" id="ratPageLayout" value="pc">
    <input type="hidden" name="rat" id="ratSiteSection" value="id">
    <input type="hidden" name="rat" id="ratAdobeSiteSection" value="registration:confirm">

    <input type="hidden" name="rat" id="ratCustomParameters" value="">

    <input type="hidden" name="rat" id="ratCvEvent" value="">
    <script type="text/javascript" src="//r.r10s.jp/com/rat/js/rat-main.js"></script>
    <!-- End of RAT tags -->

    <script type="text/javascript">
        var n = 0;
        var dfpDelayId = setInterval(function () {
            if (typeof mkfp != "undefined") {
                clearInterval(dfpDelayId);
                mkfp("regist3Form");
            } else if (n > 10) {
                clearInterval(dfpDelayId);
            } else {
                n++;
            }
        }, 100);
    </script>

</body>