<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="css/runobb.css">
</head>

<body id="confirm">
  <!-- SiteCatalyst tags -->
  <input type="hidden" name="geGeneralTags" id="geServiceId" value="top">
  <input type="hidden" name="geGeneralTags" id="geRegistType" value="Insert">
  <input type="hidden" name="geGeneralTags" id="geRegistStep" value="registration:start">
  <input type="hidden" name="geGeneralTags" id="geErrorType" value="">
  <!-- End SiteCatalyst tags -->
  <noscript>
    <p class="noJS">JavaScriptが無効の為、一部のコンテンツをご利用いただけません。<br>JavaScriptの設定を有効にしてからご利用いただきますようお願いいたします。※JavaScriptの設定方法は<a
        href="https://ichiba.faq.rakuten.net/detail/000006432">楽天市場お問い合わせQ&A</a>をご覧ください。</p>
  </noscript>
  <div id="container">
    <script language="JavaScript">
      <!---->
      function setLang(lang) {
          document.formLang1.lang.value = lang;
          document.formLang1.submit();
      }
      function setLangJa() {
          setLang("ja");
      }
      function setLangEn() {
          setLang("en");
      }
      function setLangCn() {
          setLang("zh-cn");
      }
      //-->
    </script>
  

    <div id="contents">

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
                              src="https://static.id.rakuten.co.jp/static/com/img/id/Rakuten_pc_32px@2x_wm.png" alt="楽天"
                              width="129" height="47" border="0"></a></h1>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
              <td width="50%" style="text-align:right; font-size: 13px">
                <div><a href="https://www.rakuten.co.jp/" target="_top" style="font-weight:bold">楽天市場</a></div>
                <div style="margin-top:5px;"><a href="https://ichiba.faq.rakuten.net" target="_top">ヘルプ</a></div>
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
      <h2 class="path">楽天会員登録</h2>

      <form name="Regist1Form" method="post" action="./addUser" autocomplete="off">
        <input type="hidden" name="service_id" value="top">

        <div id="step1" class="step">
          <ol class="clear">
            <li class="current">会員情報の入力</li>
            <li>入力内容の確認</li>
            <li>登録完了</li>
          </ol>
        </div>

        <h3 class="circle">メールアドレス/ユーザーID/パスワード</h3>
        <table class="address" cellspacing="0" summary="memberInformation1">


          <tbody>
            <tr>
              <th class="headRow" id="email,email2" scope="row"><span class="essential">必須</span>メールアドレス</th>
              <td>

                <em>&lt;半角英数字&gt;</em><br>

                <em>他の会員が登録済みのメールアドレスは登録できません。</em><br>
                <input type="text" name="email" maxlength="100" size="35" value="" onchange="email2.value='';"
                  class="text email" title="" style="color: rgb(153, 153, 153);">
                <br>
                <br>
                <em class="em"><em class="em">確認のためもう一度入力してください（コピー・貼り付けはしないでください。）</em></em><br>
                <input type="text" name="email2" maxlength="100" size="35" value=""
           class="text email2" title=""
                  style="color: rgb(153, 153, 153);">
                <br>
                <br>
              </td>
              <td class="note help">
                <a class="help"
                  href="javascript:void(window.open('https://help.rakuten.co.jp/mw/?hid=240','help','scrollbars=yes,resizable=yes,width=410, height=300'));">詳しいヘルプ</a>
              </td>
            </tr>


            <tr>
              <th class="headRow" id="u" scope="row"><span class="essential">必須</span>ユーザID</th>
              <td nowrap="">

                <em>会員向けサービスにログインするときに使用します。</em><br>
                <input type="radio" name="radio_mail" value="0" checked="checked">メールアドレスをユーザIDとして使用<br>
                <br>
                <input type="radio" name="radio_mail" value="1">メールアドレス以外をユーザIDとして使用<br>

                <em>&lt;6文字以上・半角英数字&gt; 数字だけにすることはできません</em><br>
                <div id="user"><input type="text" name="u" maxlength="100" size="50" value="" class="text userid"
                    title="(例) rakuten1234" style="color: rgb(153, 153, 153);"></div>

              </td>
              <td class="note">
                <a class="help"
                  href="javascript:void(window.open('https://ichiba.faq.rakuten.net/detail/000016897','help','scrollbars=yes,resizable=yes,width=410, height=300'));">詳しいヘルプ</a>
              </td>
            </tr>


            <script type="text/javascript" src="/com/js/id/rids_common.js"></script>


            <tr>
              <th class="headRow" id="p" scope="row"><span class="essential">必須</span>パスワード</th>
              <td>
                <em>&lt;6文字以上半角英数字&gt;</em><br>
                <em>「ユーザID」と同じものは登録できません</em><br>
                <em>第三者によるログインを防ぐために、できるだけ複雑なものを設定してください。</em><br>
                <input type="password" name="p" maxlength="128" size="20" value="" 
   					 onkeypress="pFlagOn()" onfocus="pFocus(this)" id="p_id" title="(例) 18f5ns1kzm"><br>


                <div id="psm_box">
                  <div class="psm_bar_style">
                    <div id="psm_bar" style="width: 0%;" class="useless"></div>
                  </div>
                  <div id="psm_msg_length" style="display: none;"><img src="/com/img/id/psm_not_good.jpg" width="10"
                      height="10" style="margin-right: 5px">パスワードは6文字以上で入力してください。</div>
                  <div id="psm_msg_userP" style="display: none;"><img src="/com/img/id/psm_not_good.jpg" width="10"
                      height="10" style="margin-right: 5px">ユーザIDと同じ文字をパスワードに指定することはできません。</div>
                  <div id="psm_msg_astrix" style="display: none;"><img src="/com/img/id/psm_not_good.jpg" width="10"
                      height="10" style="margin-right: 5px">パスワードにアスタリスク(*)のみを指定することはできません。</div>
                  <div id="psm_msg_low" style="display: none;"><img src="/com/img/id/psm_good.jpg" width="10"
                      height="10" style="margin-right: 5px">パスワード強度：低</div>
                  <div id="psm_msg_lowmid" style="display: none;"><img src="/com/img/id/psm_good.jpg" width="10"
                      height="10" style="margin-right: 5px">パスワード強度：中低</div>
                  <div id="psm_msg_mid" style="display: none;"><img src="/com/img/id/psm_good.jpg" width="10"
                      height="10" style="margin-right: 5px">パスワード強度：中</div>
                  <div id="psm_msg_high" style="display: none;"><img src="/com/img/id/psm_good.jpg" width="10"
                      height="10" style="margin-right: 5px">パスワード強度：高</div>
                  <div id="psm_msg_none" style="display: block;"></div>
                </div>
                <br>
              </td>
              <td class="note">
                <a class="help"
                  href="javascript:void(window.open('https://help.rakuten.co.jp/mw/?hid=49','help','scrollbars=yes,resizable=yes,width=410, height=300'));">詳しいヘルプ</a>
              </td>
            </tr>


          </tbody>
        </table>

        <h3 class="circle">お客様の基本情報</h3>
        <table class="address"  summary="memberInformation1">


          <tbody>
            <tr>
              <th class="headRow" id="lname,fname" scope="row"><span class="essential">必須</span>氏名</th>
              <td>
                <em>入力情報に誤りがあると、パスワード再設定が正しく行えない場合があります。</em><br>
                <strong><em class="em">ご自身の氏名をお間違えないように登録してください。</em></strong><br>


                （姓）
               <input type="text" id="lname" name="lname" alt=""  class="text name">
                （名）
                <input type="text" id="fname" name="fname" alt="" class="text name" >
                <br>
				
					
              </td>
              <td class="note">&nbsp;</td>
            </tr>

            <tr>
              <th class="headRow" id="lname_kana,fname_kana" scope="row"><span class="essential">必須</span>氏名（フリガナ）</th>
              <td>
                <em>&lt;全角カタカナのみ&gt;</em><br>
                （姓）
                 <input type="text" id="lname_kana" name="lname_kana" alt=""  class="text name">
                （名）
             <input type="text" id="fname_kana" name="fname_kana" alt=""  class="text name">
                <br>

              </td>
              <td class="note">&nbsp;</td>
            </tr>




          </tbody>
        </table>



        <input type="hidden" name="radio_ptype" value="1">

        <input type="hidden" name="other_ptype" value="自宅">


        <table style="display: none">

          <tbody>
            <tr style="display:none;">
              <td>
                <div id="challenger"><input name="cres" id="cres" type="hidden" value="08jBdT910kRcAMRb"></div>
                <input type="hidden" name="cid" id="cid"
                  value="eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2R0NNIn0.5kkJ5oJAJmy7z0lMeu2ZD5dnXQEqNe6B6jWtXh5Mtc9jk_xzh4DRBg.IxEyPgWhZPO9X6LD.O8Rzc_KLXxtlN_oPAa--PnnQmea-WG3pSLs9-sNi92k-G1iR3olSERxVqYWnYwibO1Kyn1MaIzKwuqtew4hRliNHMbV_yzHSPJUt1BjyiF8EyrC_k8yFRzA0rGc1OpKTFgDf6uqPAGHoc5S84s92J5Ti8RircM4aACWjO00JylPX0CK0AG94hpXDruugtn8f58sDnQ6BC5K77qs5xZs729XZSXhWiXZ6cRW0a7v00RKSGYCEE1acBRb0N7WW68RBcNIyIFe8qTGZU-nMDyd3T-oJMH-Cj6oHVlPnTZ1QdRkEGP0qOM5Nsk45MF8HNYByNnV5XUeKlmNVxlx8yMq8DRvadC10rOa-.QPm8Ee8hRx3l7DL3_m5ayA">
                <input type="hidden" name="cpid" id="cpid" value="db74b602-4b9b-4713-9d2f-d6c2972fe75c">
                <input type="hidden" name="ctid" id="ctid" value="63b4f2a0-4ff5-4a56-98ff-99e1a7d7098c">
                <script id="challenger-script"
                  type="text/javascript">window.__challenger_conf || (window.__challenger_conf = {}),
                      window.__challenger_conf.render || (window.__challenger_conf.render = "onload"),
                      window.__challenger_conf.p || (window.__challenger_conf.p = ""),
                      window.__challenger_conf.lang || (window.__challenger_conf.lang = "ja-JP"),
                      window.__challenger_conf.cdata || (window.__challenger_conf.cdata = "{\"status\":\"OK\",\"result\":{\"cid\":\"eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2R0NNIn0.TzjsvO9ia4xlMoUCM_x32vJ5EZKwWTBlwM_UF-vkZ-rrQIcgVAWpCQ.jfm30I3s7FDKML14.Zzkv3if5WRS_dDGYE6KZzx8Z6l9xetXzOd_o6p87O3R7Xhb7IM5OI-dqZVOQL34t8-RmbVNcZ2IwTczj14OHBKuGB0sHWdEYN57D06Rk6GAySNl4_eQ9D18KMuWp2rxCDgNSmHppp7RdJGc4drYEqSFteul7MyU1jt-x4TZzoRSQeTQg0QA9SUH6xW78qhPhbolp8rXAHgidhmqO8BDNkQiI5uKGsRtw8NE5RV2LX-HZ-IZK1NJr2WXnHvtiVxrS8V-ZlZC7yEVOGy__eCap7VMvonSxUnzBqrH8aIK8Cm6oUNBOIaPgctiFap_0J1-MVphiGF4yNY2AMGLeXypbcsYz3OJ58CRL0w.HbQLX63EI_l0GEdDDvPEEA\",\"ctype\":128,\"ts\":\"2023-03-25T15:47:27.794279003+09:00\"}}"),
                      window.__challenger_conf.mdata || (window.__challenger_conf.mdata = "{\"mask\":\"10c84\",\"key\":\"9b\",\"seed\":1374710869}"),
                      window.__challenger = {}; !function (e, t, n) { "use strict"; "undefined" != typeof MODULE_SUPPORT && !0 === MODULE_SUPPORT ? "function" == typeof define && define.amd ? define(n) : "undefined" != typeof module && module.exports ? module.exports = n() : t.exports ? t.exports = n() : t[e] = n() : t[e] = n() }("Fingerprint2Shrinked", this, function () { "use strict"; Array.prototype.indexOf || (Array.prototype.indexOf = function (e, t) { var n; if (null == this) throw new TypeError("'this' is null or undefined"); var i = Object(this), a = i.length >>> 0; if (0 === a) return -1; var r = +t || 0; if (Math.abs(r) === 1 / 0 && (r = 0), r >= a) return -1; for (n = Math.max(r >= 0 ? r : a - Math.abs(r), 0); n < a;) { if (n in i && i[n] === e) return n; n++ } return -1 }); var e = function (t) { if (!(this instanceof e)) return new e(t); var n = { detectScreenOrientation: !0, sortPluginsFor: [/palemoon/i] }; this.options = this.extend(t, n), this.nativeForEach = Array.prototype.forEach, this.nativeMap = Array.prototype.map }; return e.prototype = { extend: function (e, t) { if (null == e) return t; for (var n in e) null != e[n] && t[n] !== e[n] && (t[n] = e[n]); return t }, log: function (e) { window.console && console.log(e) }, get: function (e) { var t = []; t = this.userAgentKey(t), t = this.languageKey(t), t = this.colorDepthKey(t), t = this.pixelRatioKey(t), t = this.screenResolutionKey(t), t = this.availableScreenResolutionKey(t), t = this.timezoneOffsetKey(t), t = this.sessionStorageKey(t), t = this.localStorageKey(t), t = this.indexedDbKey(t), t = this.addBehaviorKey(t), t = this.openDatabaseKey(t), t = this.cpuClassKey(t), t = this.platformKey(t), t = this.doNotTrackKey(t), t = this.adBlockKey(t), t = this.hasLiedLanguagesKey(t), t = this.hasLiedResolutionKey(t), t = this.hasLiedOsKey(t), t = this.hasLiedBrowserKey(t), t = this.touchSupportKey(t); var n = this, i = [], a = {}; return n.each(t, function (e) { var t = e.value; void 0 !== e.value.join && (t = e.value.join(";")), i.push(t), a[e.key] = e.value }), e(n.x64hash128(i.join("~~~"), 31), t, a) }, userAgentKey: function (e) { return this.options.excludeUserAgent || e.push({ key: "user_agent", value: this.getUserAgent() }), e }, getUserAgent: function () { return navigator.userAgent }, languageKey: function (e) { return this.options.excludeLanguage || e.push({ key: "language", value: navigator.language || navigator.userLanguage || navigator.browserLanguage || navigator.systemLanguage || "" }), e }, colorDepthKey: function (e) { return this.options.excludeColorDepth || e.push({ key: "color_depth", value: screen.colorDepth || -1 }), e }, pixelRatioKey: function (e) { return this.options.excludePixelRatio || e.push({ key: "pixel_ratio", value: this.getPixelRatio() }), e }, getPixelRatio: function () { return window.devicePixelRatio || "" }, screenResolutionKey: function (e) { return this.options.excludeScreenResolution ? e : this.getScreenResolution(e) }, getScreenResolution: function (e) { var t; return t = this.options.detectScreenOrientation && screen.height > screen.width ? [screen.height, screen.width] : [screen.width, screen.height], void 0 !== t && e.push({ key: "resolution", value: t }), e }, availableScreenResolutionKey: function (e) { return this.options.excludeAvailableScreenResolution ? e : this.getAvailableScreenResolution(e) }, getAvailableScreenResolution: function (e) { var t; return screen.availWidth && screen.availHeight && (t = this.options.detectScreenOrientation ? screen.availHeight > screen.availWidth ? [screen.availHeight, screen.availWidth] : [screen.availWidth, screen.availHeight] : [screen.availHeight, screen.availWidth]), void 0 !== t && e.push({ key: "available_resolution", value: t }), e }, timezoneOffsetKey: function (e) { return this.options.excludeTimezoneOffset || e.push({ key: "timezone_offset", value: (new Date).getTimezoneOffset() }), e }, sessionStorageKey: function (e) { return !this.options.excludeSessionStorage && this.hasSessionStorage() && e.push({ key: "session_storage", value: 1 }), e }, localStorageKey: function (e) { return !this.options.excludeSessionStorage && this.hasLocalStorage() && e.push({ key: "local_storage", value: 1 }), e }, indexedDbKey: function (e) { return !this.options.excludeIndexedDB && this.hasIndexedDB() && e.push({ key: "indexed_db", value: 1 }), e }, addBehaviorKey: function (e) { return document.body && !this.options.excludeAddBehavior && document.body.addBehavior && e.push({ key: "add_behavior", value: 1 }), e }, openDatabaseKey: function (e) { return !this.options.excludeOpenDatabase && window.openDatabase && e.push({ key: "open_database", value: 1 }), e }, cpuClassKey: function (e) { return this.options.excludeCpuClass || e.push({ key: "cpu_class", value: this.getNavigatorCpuClass() }), e }, platformKey: function (e) { return this.options.excludePlatform || e.push({ key: "navigator_platform", value: this.getNavigatorPlatform() }), e }, doNotTrackKey: function (e) { return this.options.excludeDoNotTrack || e.push({ key: "do_not_track", value: this.getDoNotTrack() }), e }, adBlockKey: function (e) { return this.options.excludeAdBlock || e.push({ key: "adblock", value: Number(this.getAdBlock()) }), e }, hasLiedLanguagesKey: function (e) { return this.options.excludeHasLiedLanguages || e.push({ key: "has_lied_languages", value: Number(this.getHasLiedLanguages()) }), e }, hasLiedResolutionKey: function (e) { return this.options.excludeHasLiedResolution || e.push({ key: "has_lied_resolution", value: Number(this.getHasLiedResolution()) }), e }, hasLiedOsKey: function (e) { return this.options.excludeHasLiedOs || e.push({ key: "has_lied_os", value: Number(this.getHasLiedOs()) }), e }, hasLiedBrowserKey: function (e) { return this.options.excludeHasLiedBrowser || e.push({ key: "has_lied_browser", value: Number(this.getHasLiedBrowser()) }), e }, getRegularPlugins: function () { for (var e = [], t = 0, n = navigator.plugins.length; t < n; t++)e.push(navigator.plugins[t]); return this.pluginsShouldBeSorted() && (e = e.sort(function (e, t) { return e.name > t.name ? 1 : e.name < t.name ? -1 : 0 })), this.map(e, function (e) { var t = this.map(e, function (e) { return [e.type, e.suffixes].join("~") }).join(","); return [e.name, e.description, t].join("::") }, this) }, touchSupportKey: function (e) { return this.options.excludeTouchSupport || e.push({ key: "touch_support", value: this.getTouchSupport() }), e }, hasSessionStorage: function () { try { return !!window.sessionStorage } catch (e) { return !0 } }, hasLocalStorage: function () { try { return !!window.localStorage } catch (e) { return !0 } }, hasIndexedDB: function () { return !!window.indexedDB }, getNavigatorCpuClass: function () { return navigator.cpuClass ? navigator.cpuClass : "unknown" }, getNavigatorPlatform: function () { return navigator.platform ? navigator.platform : "unknown" }, getDoNotTrack: function () { return navigator.doNotTrack ? navigator.doNotTrack : navigator.msDoNotTrack ? navigator.msDoNotTrack : window.doNotTrack ? window.doNotTrack : "unknown" }, getTouchSupport: function () { var e = 0, t = 0; void 0 !== navigator.maxTouchPoints ? e = navigator.maxTouchPoints : void 0 !== navigator.msMaxTouchPoints && (e = navigator.msMaxTouchPoints); try { document.createEvent("TouchEvent"), t = 1 } catch (e) { } return [e, t, Number("ontouchstart" in window)] }, getAdBlock: function () { var e = document.createElement("div"); e.innerHTML = "&nbsp;", e.className = "adsbox"; var t = !1; try { document.body.appendChild(e), t = 0 === document.getElementsByClassName("adsbox")[0].offsetHeight, document.body.removeChild(e) } catch (e) { t = !1 } return t }, getHasLiedLanguages: function () { if (void 0 !== navigator.languages) try { if (navigator.languages[0].substr(0, 2) !== navigator.language.substr(0, 2)) return !0 } catch (e) { return !0 } return !1 }, getHasLiedResolution: function () { return screen.width < screen.availWidth || screen.height < screen.availHeight }, getHasLiedOs: function () { var e, t = navigator.userAgent.toLowerCase(), n = navigator.oscpu, i = navigator.platform.toLowerCase(); e = t.indexOf("windows phone") >= 0 ? "Windows Phone" : t.indexOf("win") >= 0 ? "Windows" : t.indexOf("android") >= 0 ? "Android" : t.indexOf("linux") >= 0 ? "Linux" : t.indexOf("iphone") >= 0 || t.indexOf("ipad") >= 0 ? "iOS" : t.indexOf("mac") >= 0 ? "Mac" : "Other"; if (("ontouchstart" in window || navigator.maxTouchPoints > 0 || navigator.msMaxTouchPoints > 0) && "Windows Phone" !== e && "Android" !== e && "iOS" !== e && "Other" !== e) return !0; if (void 0 !== n) { if (n = n.toLowerCase(), n.indexOf("win") >= 0 && "Windows" !== e && "Windows Phone" !== e) return !0; if (n.indexOf("linux") >= 0 && "Linux" !== e && "Android" !== e) return !0; if (n.indexOf("mac") >= 0 && "Mac" !== e && "iOS" !== e) return !0; if (0 === n.indexOf("win") && 0 === n.indexOf("linux") && n.indexOf("mac") >= 0 && "other" !== e) return !0 } return i.indexOf("win") >= 0 && "Windows" !== e && "Windows Phone" !== e || ((i.indexOf("linux") >= 0 || i.indexOf("android") >= 0 || i.indexOf("pike") >= 0) && "Linux" !== e && "Android" !== e || ((i.indexOf("mac") >= 0 || i.indexOf("ipad") >= 0 || i.indexOf("ipod") >= 0 || i.indexOf("iphone") >= 0) && "Mac" !== e && "iOS" !== e || (0 === i.indexOf("win") && 0 === i.indexOf("linux") && i.indexOf("mac") >= 0 && "other" !== e || void 0 === navigator.plugins && "Windows" !== e && "Windows Phone" !== e))) }, getHasLiedBrowser: function () { var e, t = navigator.userAgent.toLowerCase(), n = navigator.productSub; if (("Chrome" === (e = t.indexOf("firefox") >= 0 ? "Firefox" : t.indexOf("opera") >= 0 || t.indexOf("opr") >= 0 ? "Opera" : t.indexOf("chrome") >= 0 ? "Chrome" : t.indexOf("safari") >= 0 ? "Safari" : t.indexOf("trident") >= 0 ? "Internet Explorer" : "Other") || "Safari" === e || "Opera" === e) && "20030107" !== n) return !0; var i = eval.toString().length; if (37 === i && "Safari" !== e && "Firefox" !== e && "Other" !== e) return !0; if (39 === i && "Internet Explorer" !== e && "Other" !== e) return !0; if (33 === i && "Chrome" !== e && "Opera" !== e && "Other" !== e) return !0; var a; try { throw "a" } catch (e) { try { e.toSource(), a = !0 } catch (e) { a = !1 } } return !(!a || "Firefox" === e || "Other" === e) }, each: function (e, t, n) { if (null !== e) if (this.nativeForEach && e.forEach === this.nativeForEach) e.forEach(t, n); else if (e.length === +e.length) { for (var i = 0, a = e.length; i < a; i++)if (t.call(n, e[i], i, e) === {}) return } else for (var r in e) if (e.hasOwnProperty(r) && t.call(n, e[r], r, e) === {}) return }, map: function (e, t, n) { var i = []; return null == e ? i : this.nativeMap && e.map === this.nativeMap ? e.map(t, n) : (this.each(e, function (e, a, r) { i[i.length] = t.call(n, e, a, r) }), i) }, x64Add: function (e, t) { e = [e[0] >>> 16, 65535 & e[0], e[1] >>> 16, 65535 & e[1]], t = [t[0] >>> 16, 65535 & t[0], t[1] >>> 16, 65535 & t[1]]; var n = [0, 0, 0, 0]; return n[3] += e[3] + t[3], n[2] += n[3] >>> 16, n[3] &= 65535, n[2] += e[2] + t[2], n[1] += n[2] >>> 16, n[2] &= 65535, n[1] += e[1] + t[1], n[0] += n[1] >>> 16, n[1] &= 65535, n[0] += e[0] + t[0], n[0] &= 65535, [n[0] << 16 | n[1], n[2] << 16 | n[3]] }, x64Multiply: function (e, t) { e = [e[0] >>> 16, 65535 & e[0], e[1] >>> 16, 65535 & e[1]], t = [t[0] >>> 16, 65535 & t[0], t[1] >>> 16, 65535 & t[1]]; var n = [0, 0, 0, 0]; return n[3] += e[3] * t[3], n[2] += n[3] >>> 16, n[3] &= 65535, n[2] += e[2] * t[3], n[1] += n[2] >>> 16, n[2] &= 65535, n[2] += e[3] * t[2], n[1] += n[2] >>> 16, n[2] &= 65535, n[1] += e[1] * t[3], n[0] += n[1] >>> 16, n[1] &= 65535, n[1] += e[2] * t[2], n[0] += n[1] >>> 16, n[1] &= 65535, n[1] += e[3] * t[1], n[0] += n[1] >>> 16, n[1] &= 65535, n[0] += e[0] * t[3] + e[1] * t[2] + e[2] * t[1] + e[3] * t[0], n[0] &= 65535, [n[0] << 16 | n[1], n[2] << 16 | n[3]] }, x64Rotl: function (e, t) { return t %= 64, 32 === t ? [e[1], e[0]] : t < 32 ? [e[0] << t | e[1] >>> 32 - t, e[1] << t | e[0] >>> 32 - t] : (t -= 32, [e[1] << t | e[0] >>> 32 - t, e[0] << t | e[1] >>> 32 - t]) }, x64LeftShift: function (e, t) { return t %= 64, 0 === t ? e : t < 32 ? [e[0] << t | e[1] >>> 32 - t, e[1] << t] : [e[1] << t - 32, 0] }, x64Xor: function (e, t) { return [e[0] ^ t[0], e[1] ^ t[1]] }, x64Fmix: function (e) { return e = this.x64Xor(e, [0, e[0] >>> 1]), e = this.x64Multiply(e, [4283543511, 3981806797]), e = this.x64Xor(e, [0, e[0] >>> 1]), e = this.x64Multiply(e, [3301882366, 444984403]), e = this.x64Xor(e, [0, e[0] >>> 1]) }, x64hash128: function (e, t) { e = e || "", t = t || 0; for (var n = e.length % 16, i = e.length - n, a = [0, t], r = [0, t], o = [0, 0], s = [0, 0], c = [2277735313, 289559509], l = [1291169091, 658871167], d = 0; d < i; d += 16)o = [255 & e.charCodeAt(d + 4) | (255 & e.charCodeAt(d + 5)) << 8 | (255 & e.charCodeAt(d + 6)) << 16 | (255 & e.charCodeAt(d + 7)) << 24, 255 & e.charCodeAt(d) | (255 & e.charCodeAt(d + 1)) << 8 | (255 & e.charCodeAt(d + 2)) << 16 | (255 & e.charCodeAt(d + 3)) << 24], s = [255 & e.charCodeAt(d + 12) | (255 & e.charCodeAt(d + 13)) << 8 | (255 & e.charCodeAt(d + 14)) << 16 | (255 & e.charCodeAt(d + 15)) << 24, 255 & e.charCodeAt(d + 8) | (255 & e.charCodeAt(d + 9)) << 8 | (255 & e.charCodeAt(d + 10)) << 16 | (255 & e.charCodeAt(d + 11)) << 24], o = this.x64Multiply(o, c), o = this.x64Rotl(o, 31), o = this.x64Multiply(o, l), a = this.x64Xor(a, o), a = this.x64Rotl(a, 27), a = this.x64Add(a, r), a = this.x64Add(this.x64Multiply(a, [0, 5]), [0, 1390208809]), s = this.x64Multiply(s, l), s = this.x64Rotl(s, 33), s = this.x64Multiply(s, c), r = this.x64Xor(r, s), r = this.x64Rotl(r, 31), r = this.x64Add(r, a), r = this.x64Add(this.x64Multiply(r, [0, 5]), [0, 944331445]); switch (o = [0, 0], s = [0, 0], n) { case 15: s = this.x64Xor(s, this.x64LeftShift([0, e.charCodeAt(d + 14)], 48)); case 14: s = this.x64Xor(s, this.x64LeftShift([0, e.charCodeAt(d + 13)], 40)); case 13: s = this.x64Xor(s, this.x64LeftShift([0, e.charCodeAt(d + 12)], 32)); case 12: s = this.x64Xor(s, this.x64LeftShift([0, e.charCodeAt(d + 11)], 24)); case 11: s = this.x64Xor(s, this.x64LeftShift([0, e.charCodeAt(d + 10)], 16)); case 10: s = this.x64Xor(s, this.x64LeftShift([0, e.charCodeAt(d + 9)], 8)); case 9: s = this.x64Xor(s, [0, e.charCodeAt(d + 8)]), s = this.x64Multiply(s, l), s = this.x64Rotl(s, 33), s = this.x64Multiply(s, c), r = this.x64Xor(r, s); case 8: o = this.x64Xor(o, this.x64LeftShift([0, e.charCodeAt(d + 7)], 56)); case 7: o = this.x64Xor(o, this.x64LeftShift([0, e.charCodeAt(d + 6)], 48)); case 6: o = this.x64Xor(o, this.x64LeftShift([0, e.charCodeAt(d + 5)], 40)); case 5: o = this.x64Xor(o, this.x64LeftShift([0, e.charCodeAt(d + 4)], 32)); case 4: o = this.x64Xor(o, this.x64LeftShift([0, e.charCodeAt(d + 3)], 24)); case 3: o = this.x64Xor(o, this.x64LeftShift([0, e.charCodeAt(d + 2)], 16)); case 2: o = this.x64Xor(o, this.x64LeftShift([0, e.charCodeAt(d + 1)], 8)); case 1: o = this.x64Xor(o, [0, e.charCodeAt(d)]), o = this.x64Multiply(o, c), o = this.x64Rotl(o, 31), o = this.x64Multiply(o, l), a = this.x64Xor(a, o) }return a = this.x64Xor(a, [0, e.length]), r = this.x64Xor(r, [0, e.length]), a = this.x64Add(a, r), r = this.x64Add(r, a), a = this.x64Fmix(a), r = this.x64Fmix(r), a = this.x64Add(a, r), r = this.x64Add(r, a), ("00000000" + (a[0] >>> 0).toString(16)).slice(-8) + ("00000000" + (a[1] >>> 0).toString(16)).slice(-8) + ("00000000" + (r[0] >>> 0).toString(16)).slice(-8) + ("00000000" + (r[1] >>> 0).toString(16)).slice(-8) } }, e.VERSION = "1.4.2", e }), __challenger_conf.capi = "https://challenger.api.global.rakuten.com/v1.0", __challenger_conf.cpid = document.getElementById("cpid").value, "" !== __challenger_conf.trackingId && void 0 !== __challenger_conf.trackingId || (__challenger_conf.trackingId = null); var __challenger_stats = __challenger_stats || {}, __challenger_events = __challenger_events || { mm: 0, mc: 0, kp: 0, ts: 0 }, doRefresh = !0; !function (e) { function t(e, t, n, i) { var a = __challenger_conf.capi + e; __challenger_conf.trackingId && (a = a.indexOf("?") > -1 ? a + "&tracking_id=" : a + "?tracking_id=", a += __challenger_conf.trackingId); var r = new XMLHttpRequest; r.onreadystatechange = function () { 4 != this.readyState || 200 != this.status && 400 != this.status && 429 != this.status && 403 != this.status || i && "function" == typeof i && i(r.responseText, this.status) }, r.open(t, a, !0), r.setRequestHeader("Content-Type", "text/plain; charset=utf-8"), r.send(JSON.stringify(n)) } function n(e) { for (var t = "", n = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789", i = 0; i < _ - e; i++)t += n.charAt(Math.floor(Math.random() * n.length)); return t } function i(e, t) { return t = t || "", 0 === e.substring(0, t.length).localeCompare(t) } function a(e, t, a) { for (var r = e + n(e.length), o = 0, s = C.x64hash128(r, t), c = i(s, a); !c;)o += 1, r = e + n(e.length), s = C.x64hash128(r, t), c = i(s, a); return r } function r(e) { if (m > 0) e.innerHTML = "<div class='pin-send-btn pin-disabled' id='pin-send-btn'>認証コードを送信</div><div class='pin-send-txt' id='pin-send-txt'>" + l("\ufeff{0}秒後に再度リクエストが可能になります", [m]) + "</div>", p = setTimeout(function () { m -= 1, r(e) }, 1100); else { e.innerHTML = ""; var t = document.createElement("div"); t.id = "pin-send-txt", t.className = "pin-send-txt"; var n = document.createElement("div"); n.id = "pin-send-btn", n.className = "pin-send-btn pin-enabled", n.innerHTML = "認証コードを送信", n.onclick = function () { h() && !x && (x = 1, w(), O(M)) }, t.appendChild(n), e.appendChild(t) } } function o() { var e = document.getElementById("pin-verifyphone-input"); return c(e.value) || isNaN(e.value) ? (alert("正しい電話番号をご入力ください"), !1) : (window.__challenger_conf.p.phone = e.value, !0) } function s(e) { if (v > 0) e.innerHTML = "<div class='pin-resend-btn pin-disabled' id='pin-resend-btn'>認証コードのリクエスト</div><div class='pin-resend-txt' id='pin-resend-txt'>" + l("\ufeff{0}秒後に再度リクエストが可能になります", [v]) + "</div>", f = setTimeout(function () { v -= 1, s(e) }, 1100); else { e.innerHTML = ""; var t = document.createElement("div"); t.id = "pin-resend-txt", t.className = "pin-resend-txt"; var n = document.createElement("div"); n.id = "pin-resend-btn", n.className = "pin-resend-btn pin-enabled", n.innerHTML = "認証コードのリクエスト", n.onclick = function () { x || (x = 1, w(), O(M)) }, t.appendChild(n), e.appendChild(t) } } function c(e) { return !e || 0 === e.length } function l(e, t) { return e = e.replace(/{\d+}/g, function (e) { return t[e.replace(/{/, "").replace(/}/, "")] || e }) } function d(e, t) { t.parentNode.insertBefore(e, t.nextSibling) } var h = o; null != e && (h = e.validatePhone || h); var u, p, f, g, m = 0, v = 0, x = 0, _ = 16, y = document.createElement("script"), C = new Fingerprint2Shrinked; y.type = "text/javascript"; var w = function () { C.get(function (e, t, n) { __challenger_stats.hash = e, __challenger_stats.components = n }) }, S = function (e, t, n) { e.addEventListener ? e.addEventListener(t, n, !1) : e.attachEvent("on" + t, n) }, O = function (e) { var n = { pid: __challenger_conf.cpid, lang: __challenger_conf.lang, rat: __challenger_stats, param: __challenger_conf.param }; window.__challenger_conf.p && (n.param = window.__challenger_conf.p), t("/c", "POST", n, e) }, k = function (e) { doRefresh && (clearTimeout(u), u = setTimeout(function () { O(M) }, e)) }, b = function (e, n) { var i = { pid: __challenger_conf.cpid, lang: __challenger_conf.lang, rat: __challenger_stats, param: __challenger_conf.param }; window.__challenger_conf.p && (i.param = window.__challenger_conf.p), t("/m?cid=" + e + "&mtype=0", "GET", i, n) }, N = function (e) { var t = JSON.parse(e), n = a(t.key, t.seed, t.mask); document.getElementById("cres").value = n }, E = function (e) { var t = document.getElementById("pin-text"); e.match(/\*/), t.innerHTML = "以下の携帯電話番号に認証コードを送信いたしました。届いた「認証コード」を入力し、次の手続きにお進みください"; var n = document.createElement("div"); n.id = "phone-value", n.className = "phone-value", n.innerHTML = e; var i = document.createElement("div"); i.id = "pin-modifyPhone-txt", i.className = "pin-modifyPhone-txt", i.innerHTML = "[変更]", d(n, t), d(i, n), document.getElementById("pin-modifyPhone-txt").onclick = function () { window.__challenger_conf.p.phone = "required", m = v, O(M) } }, A = { EMPTY: 0, CAPTCHA: 1, POW: 2, VIBER: 3, SMS: 4 }, L = "data:image/png;base64, ", T = function (e, t) { t = t || {}; var n = window.__challenger_conf.mdata; if (window.__challenger_conf.mdata = null, n && "string" == typeof n) switch (e) { case A.CAPTCHA: var i = n.split(","); if (2 == i.length && t.refreshElement && t.imgElement) return t.imgElement.src = L + i[0], t.refreshElement.src = L + i[1], !0; case A.VIBER: var a = n.split(","); if (2 == a.length && t.refreshElement) return t.refreshElement.src = L + a[1], !0; case A.POW: return N(n), !0; case A.SMS: return E(n), !0; default: return !1 }return !1 }, M = function (e, t) { var n = JSON.parse(e), i = document.getElementById("challenger"); if (null != i) { for (; i.firstChild;)i.removeChild(i.firstChild); if (clearTimeout(p), clearTimeout(f), x = 0, 429 == t) { var a = document.createElement("div"); a.innerText = "認証コードの使用期限が切れました。再度認証コードをリクエストしてください", a.id = "pin-threshold-txt", a.className = "pin-threshold-txt"; var o = document.createElement("div"); o.className = "pin-resend-box", v = 60, m = v, s(o), i.appendChild(a), i.appendChild(o) } else if (400 == t && "phone_required" == n.code) { var c = document.createElement("div"); c.innerText = "認証コードを受信できる携帯電話番号を入力して「認証コードを送信」を押してください", c.id = "pin-verifyphone-txt", c.className = "pin-verifyphone-txt"; var l = document.createElement("div"); l.innerText = "※ハイフン(-)なしでご入力ください", l.id = "phonehelp-txt", l.className = "phonehelp-txt"; var d = document.createElement("input"); d.id = "pin-verifyphone-input", d.className = "pin-verifyphone-input", d.setAttribute("type", "tel"), d.placeholder = "電話番号をご入力ください"; var h = document.createElement("div"); h.id = "send_btn", r(h), i.appendChild(c), i.appendChild(l), i.appendChild(d), i.appendChild(h) } else if (400 == t && "ttl_expired" == n.code) { var u = document.createElement("div"); u.innerText = "セッションの有効期限が切れています", u.id = "ttl-expired-txt", u.className = "ttl-expired-txt", i.appendChild(u) } else if (403 == t && "phone_blocked" == n.code) { var g = document.createElement("div"); g.innerText = "不正なアクセスが疑われたため処理を中断いたしました", g.id = "phone-blocked-txt", g.className = "phone-blocked-txt", i.appendChild(g) } else { document.getElementsByName("cid")[0].value = n.result.cid; var _ = document.createElement("img"), y = document.createElement("div"), C = document.createElement("img"), S = document.createElement("br"), L = document.createElement("br"), K = document.createElement("input"), R = document.createElement("span"); switch (n.result.ctype) { case 1: case 7: case 15: k(115e3); try { var P = document.getElementsByName("cres")[0]; P.parentNode && P.parentNode.removeChild(P) } catch (e) { } _.className = "c-text", T(A.CAPTCHA, { refreshElement: C, imgElement: _ }) || (_.src = __challenger_conf.capi + "/m?cid=" + n.result.cid + "&mtype=0", C.src = "https://challenger.api.global.rakuten.com/static/refresh.png"), y.className = "c-refresh-div", C.className = "c-refresh", S.className = "c-break", R.className = "c-old-ie", R.innerHTML = "上記のテキストを入力してください", K.className = "c-input", K.id = "cres", K.name = "cres", K.type = "text", K.value = "", K.placeholder = "上記のテキストを入力してください", i.appendChild(_), i.appendChild(y), y.appendChild(C), i.appendChild(S), i.appendChild(R), i.appendChild(K), y.onclick = function () { w(), O(M) }; break; case 31: case 63: try { var P = document.getElementsByName("cres")[0]; P.parentNode && P.parentNode.removeChild(P) } catch (e) { } y.className = "c-refresh-div", C.className = "c-refresh", T(A.VIBER, { refreshElement: C }) || (C.src = "https://challenger.api.global.rakuten.com/static/refresh.png"), S.className = "c-break", L.className = "c-break", R.className = "c-old-ie", R.innerHTML = "Viberメッセージから6桁を入力してください", K.className = "c-pin-input", K.name = "cres", K.id = "cres", K.type = "text", K.value = "", K.placeholder = "Viberメッセージから6桁を入力してください", i.appendChild(R), i.appendChild(K), i.appendChild(S), i.appendChild(y), y.appendChild(C), i.appendChild(L), y.onclick = function () { w(), O(M) }; break; case 127: case 128: case 129: k(115e3); try { var P = document.getElementsByName("cres")[0]; P.parentNode && P.parentNode.removeChild(P) } catch (e) { } var B = document.createElement("input"); B.name = "cres", B.id = "cres", B.type = "hidden", B.value = "", i.appendChild(B), T(A.POW) || b(n.result.cid, N); break; case 255: case 511: try { var P = document.getElementsByName("cres")[0]; P.parentNode && P.parentNode.removeChild(P) } catch (e) { } var H = document.createElement("div"); H.id = "pin-text", H.className = "pin-text", K.className = "c-pin-input", K.id = "c-pin-input", K.name = "cres", K.id = "cres", K.type = "text", K.maxlength = "6", K.placeholder = "認証コードをご入力ください"; var X = document.createElement("div"); X.id = "smshelp-txt", X.className = "smshelp-txt", X.innerText = "携帯電話に認証コードが届かない場合は以下のボタンから再度リクエストしてください"; var o = document.createElement("div"); o.id = "resend_btn", o.className = "pin-resend-box", v = 60, m = v, s(o), i.appendChild(H), i.appendChild(K), i.appendChild(X), i.appendChild(o), T(A.SMS) || b(n.result.cid, E); break; default: k(115e3); try { var P = document.getElementsByName("cres")[0]; P.parentNode && P.parentNode.removeChild(P) } catch (e) { } var B = document.createElement("input"); B.name = "cres", B.id = "cres", B.type = "hidden", B.value = "", i.appendChild(B) } } } }; __challenger.callPageRequest = function () { __challenger_events.start_time = (new Date).getTime(), g = __challenger_events.start_time, w(), O(M) }; var K = __challenger_conf.cdata; null !== K && void 0 !== K ? (window.__challenger_conf.cdata = null, M(K, 200)) : __challenger.callPageRequest(), __challenger.callFormSubmit = function () { t("/p", "POST", { cid: document.getElementsByName("cid")[0].value, bio: __challenger_events }) }, __challenger.callOnClick = function () { __challenger_events.mc += 1 }, __challenger.callOnMouseMove = function (e) { __challenger_events.mm += 1; var t = (new Date).getTime(); g = t }, __challenger.callOnKeyUp = function () { __challenger_events.kp += 1 }, __challenger.callOnTouchStart = function () { __challenger_events.ts += 1 }, S(window, "click", __challenger.callOnClick), S(window, "mousemove", __challenger.callOnMouseMove), S(window, "keyup", __challenger.callOnKeyUp), S(window, "touchstart", __challenger.callOnTouchStart), function (e) { for (var t = document.getElementsByTagName("form"), n = 0; n < t.length; n++)S(t[n], "submit", e) }(__challenger.callFormSubmit) }(window.challengerCustomFunction);</script>
                <link rel="stylesheet"
                  href="https://challenger.api.rakuten.co.jp/static/challenger.css?tracking_id=63b4f2a0-4ff5-4a56-98ff-99e1a7d7098c"
                  type="text/css" media="all">
              </td>
            </tr>


          </tbody>
        </table>


        <p class="submitNote">
          楽天会員への登録には、規約および<a target="_blank" href="https://privacy.rakuten.co.jp/">個人情報保護方針</a>への同意が必要です。
        </p>

        <p class="submit">
          <input type="submit" name="execMethod" value="同意して次へ">

        </p>
        <input type="hidden" name="tok" value="HCJoWRtWKWQecEVUbtZicEx6vxpdC2OB0wfIKuD8+Y+kOOj19IXZjmERgRfnuOAC">

        <input type="hidden" name="pp_version" value="20220331">

      </form>

    </div>


    <font size="-1"><a href="https://privacy.rakuten.co.jp/" target="_blank">個人情報保護方針</a></font><br>
    <hr size="1" style="display:block;">

    <font size="-1">© Rakuten Group, Inc.</font>

  </div>


  <!-- SiteCatalyst tags -->
  <script type="text/javascript" src="//www.rakuten.co.jp/com/rat/id.rakuten.co.jp/plugin/sc_scode_switch.js"></script>
  <script type="text/javascript">var trackingParam = {}; trackingParam.events = "event82";</script>
  <script type="text/javascript" src="//image.rakuten.co.jp/com/js/omniture/s_code.js"></script><img
    src="https://image.rakuten.co.jp/com/img/home/t.gif" name="s_i_rakutendev" style="position:absolute" width="1"
    height="1">
  <script type="text/javascript" src="//www.rakuten.co.jp/com/js/omniture/codetopaste/login/sc_login.js"></script>
  <!-- End SiteCatalyst tags -->

  <!-- Rakuten Analytics Tracker (RAT) tags -->

  <script type="text/javascript" src="//r.r10s.jp/com/rat/js/rat-main.js"></script>
  <!-- End of RAT tags -->
  <script type="text/javascript" src="https://static.id.rakuten.co.jp/static/com/js/id/no_banchi.js"></script>



</body>