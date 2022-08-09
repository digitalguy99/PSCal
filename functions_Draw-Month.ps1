<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    

    <title>
        PowerShell Gallery
        | functions/Draw-Month.ps1 1.0.2
    </title>

    <link href="/favicon.ico" rel="shortcut icon" type="image/x-icon" />
        <link title="https://www.powershellgallery.com" type="application/opensearchdescription+xml" href="/opensearch.xml" rel="search">

    <link href="/Content/gallery/css/site.min.css?v=PiyChSWpJyC8Kpz_ZV5FuONZ0GHHOfH16uZN51B4pbI1" rel="stylesheet"/>

    <link href="/Content/gallery/css/branding.css?v=1.2" rel="stylesheet"/>



    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    

    
    
    
                <!-- Telemetry -->
            <script type="text/javascript">
                var appInsights = window.appInsights || function (config) {
                    function s(config) {
                        t[config] = function () {
                            var i = arguments;
                            t.queue.push(function () { t[config].apply(t, i) })
                        }
                    }

                    var t = { config: config }, r = document, f = window, e = "script", o = r.createElement(e), i, u;
                    for (o.src = config.url || "//az416426.vo.msecnd.net/scripts/a/ai.0.js", r.getElementsByTagName(e)[0].parentNode.appendChild(o), t.cookie = r.cookie, t.queue = [], i = ["Event", "Exception", "Metric", "PageView", "Trace"]; i.length;) s("track" + i.pop());
                    return config.disableExceptionTracking || (i = "onerror", s("_" + i), u = f[i], f[i] = function (config, r, f, e, o) {
                        var s = u && u(config, r, f, e, o);
                        return s !== !0 && t["_" + i](config, r, f, e, o), s
                    }), t
                }({
                    instrumentationKey: '50d4abc3-17d3-4a1b-8361-2d1e9ca8f6d5',
                    samplingPercentage: 100
                });

                window.appInsights = appInsights;
                appInsights.trackPageView();
            </script>

</head>
<body role="presentation">
    





<nav class="navbar navbar-inverse" role="navigation">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 text-center">
                <a href="#" id="skipToContent" class="showOnFocus" title="Skip To Content">Skip To Content</a>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-offset-1 col-sm-2">
                <div class="navbar-header">
                    <a href="/" class="nvabar-header-aLink">
                        <img class="navbar-logo img-responsive" alt="PowerShell Gallery Home"
                             src="/Content/Images/Branding/psgallerylogo.svg"
                                 onerror="this.src='https://powershellgallery.com/Content/Images/Branding/psgallerylogo.png'; this.onerror = null;"
 />
                    </a>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar" title="Open Main Menu and profile dropdown">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
            </div>
            <div class="col-sm-12 col-md-8 special-margin-left">
                <div id="navbar" class="navbar-collapse collapse" role="navigation" aria-label="Navigation Bar">
                    <table role="presentation">
                        <tr>
                            <td colspan="3">
                                <ul class="nav navbar-nav" role="tablist">
                                        <li class="" role="presentation">
        <a role="tab" aria-selected="false" href="/packages" target="" aria-label="Packages">
            <span aria-hidden="true">Packages</span>
        </a>
    </li>

                                        <li class="" role="presentation">
        <a role="tab" aria-selected="false" href="/packages/manage/upload" target="" aria-label="Publish">
            <span aria-hidden="true">Publish</span>
        </a>
    </li>

    <li class="" role="presentation">
        <a role="tab" aria-selected="false" href="/stats" target="" aria-label="Statistics">
            <span aria-hidden="true">Statistics</span>
        </a>
    </li>
                                                                            <li class="" role="presentation">
        <a role="tab" aria-selected="false" href="https://go.microsoft.com/fwlink/?LinkID=825202&amp;clcid=0x409" target="_blank" aria-label="Documentation">
            <span aria-hidden="true">Documentation</span>
        </a>
    </li>

                                </ul>
                            </td>
                            <td colspan="1" class="td-align-topright">
                                    <ul class="nav navbar-nav navbar-right" role="tablist">
    <li class="" role="presentation">
        <a role="tab" aria-selected="false" href="/users/account/LogOn?returnUrl=%2Fpackages%2FPSCal%2F1.0.2%2FContent%2Ffunctions%2FDraw-Month.ps1" target="" aria-label="Sign in">
            <span aria-hidden="true">Sign in</span>
        </a>
    </li>
                                    </ul>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

        <div class="container-fluid search-container">
            <div class="row" id="search-row">
                <form aria-label="Package search bar" action="/packages" method="get">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-offset-1 col-sm-2"></div>
                            <div class="col-sm-12 col-md-8">
                                <div class="form-group special-margin-left">
                                    <label for="search">Search PowerShell packages:</label>
<div class="input-group"  role="presentation">
    <input name="q" type="text" class="form-control ms-borderColor-blue search-box" id="search" aria-label="Enter packages to search, use the arrow keys to autofill."
           placeholder="PowerShellGet, Get-AzVM, etc..." autocomplete="on"
           value=""
           />
    <span class="input-group-btn">
        <button class="btn btn-default btn-search ms-borderColor-blue ms-borderColor-blue--hover" type="submit"
                title="Search PowerShell packages" aria-label="Search PowerShell packages">
            <span class="ms-Icon ms-Icon--Search" aria-hidden="true"></span>
        </button>
    </span>
</div>

                                    <div id="autocomplete-results-container" class="text-left" tabindex="0"></div>

<script type="text/html" id="autocomplete-results-row">
    <!-- ko if: $data -->
    <!-- ko if: $data.PackageRegistration -->
    <div class="col-sm-4 autocomplete-row-id autocomplete-row-data">
        <span data-bind="attr: { id: 'autocomplete-result-id-' + $data.PackageRegistration.Id, title: $data.PackageRegistration.Id }, text: $data.PackageRegistration.Id"></span>
    </div>
    <div class="col-sm-4 autocomplete-row-downloadcount text-right autocomplete-row-data">
        <span data-bind="text: $data.DownloadCount + ' downloads'"></span>
    </div>
    <div class="col-sm-4 autocomplete-row-owners text-left autocomplete-row-data">
        <span data-bind="text: $data.OwnersString + ' '"></span>
    </div>
    <!-- /ko -->
    <!-- ko ifnot: $data.PackageRegistration -->
    <div class="col-sm-12 autocomplete-row-id autocomplete-row-data">
        <span data-bind="attr: { id: 'autocomplete-result-id-' + $data, title: $data  }, text: $data"></span>
    </div>
    <!-- /ko -->
    <!-- /ko -->
</script>

<script type="text/html" id="autocomplete-results-template">
    <!-- ko if: $data.data.length > 0 -->
    <div data-bind="foreach: $data.data" id="autocomplete-results-list">
        <a data-bind="attr: { id: 'autocomplete-result-row-' + $data, href: '/packages/' + $data, title: $data }" tabindex="-1">
            <div data-bind="attr:{ id: 'autocomplete-container-' + $data }" class="autocomplete-results-row">
            </div>
        </a>
    </div>
    <!-- /ko -->
</script>

                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
</nav>





    <div id="skippedToContent">
        

<div role="main" class="container page-display-filecontent">
    <div class="row package-page-heading">
        <div class="col-xs-12 col-sm-offset-1 col-sm-10">
            <h1><a href="/packages/PSCal/">PSCal</a></h1>
            <h4><a href="/packages/PSCal/1.0.2"> 1.0.2</a></h4>
        </div>
    </div>
    <div class="row package-page-MoreInfo">
        <div class="col-xs-12 col-sm-offset-1 col-sm-10">
            <h3>functions/Draw-Month.ps1</h3>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12 col-sm-offset-1 col-sm-10 div-fileContentDisplay">          
            <div class="row fileContentDisplay">
                <table class="fileContentDisplay-table">
                    <tbody>
                        <tr>
                            <td class="lineNumber col-sm-offset-0 col-sm-1">
                                1<BR />2<BR />3<BR />4<BR />5<BR />6<BR />7<BR />8<BR />9<BR />10<BR />11<BR />12<BR />13<BR />14<BR />15<BR />16<BR />17<BR />18<BR />19<BR />20<BR />21<BR />22<BR />23<BR />24<BR />25<BR />26<BR />27<BR />28<BR />29<BR />30<BR />31<BR />32<BR />33<BR />34<BR />35<BR />36<BR />37<BR />38<BR />39<BR />40<BR />41<BR />42<BR />43<BR />44<BR />45<BR />46<BR />47<BR />48<BR />49<BR />50<BR />51<BR />52<BR />53<BR />54<BR />55<BR />56<BR />57<BR />58<BR />59<BR />60<BR />61<BR />62<BR />63<BR />64<BR />65<BR />66<BR />67<BR />68<BR />69<BR />70<BR />71<BR />72<BR />73<BR />74<BR />75<BR />76<BR />77<BR />78<BR />79<BR />80<BR />81<BR />82<BR />83<BR />84<BR />85<BR />86<BR />87<BR />88<BR />89<BR />90<BR />91<BR />92<BR />93<BR />94<BR />95<BR />96<BR />97<BR />98<BR />99<BR />100<BR />101<BR />102<BR />103<BR />104<BR />105<BR />106<BR />107<BR />108<BR />109<BR />110<BR />111<BR />112<BR />113<BR />114<BR />115<BR />116<BR />117<BR />118<BR />119<BR />120<BR />121<BR />122<BR />123<BR />124<BR />
                            </td>
                            <td class="fileContent col-sm-10">
                                <span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Draw-Month</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>CmdletBinding</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>param</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>(</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># Parameter help description</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateNotNullOrEmpty</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateSet</span><span style='color:#000000'>(</span><span style='color:#8B0000'>&quot;Month&quot;</span><span style='color:#A9A9A9'>,</span><span style='color:#8B0000'>&quot;MonthAndYear&quot;</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Title</span><span style='color:#A9A9A9'>=</span><span style='color:#8B0000'>&quot;Month&quot;</span><span style='color:#A9A9A9'>,</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateNotNullOrEmpty</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Year</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateNotNullOrEmpty</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[string]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Month</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateNotNullOrEmpty</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateRange</span><span style='color:#000000'>(</span><span style='color:#800080'>0</span><span style='color:#A9A9A9'>,</span><span style='color:#800080'>6</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[int]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$FirstDayOfMonth</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateNotNullOrEmpty</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateSet</span><span style='color:#000000'>(</span><span style='color:#800080'>28</span><span style='color:#A9A9A9'>,</span><span style='color:#800080'>29</span><span style='color:#A9A9A9'>,</span><span style='color:#800080'>30</span><span style='color:#A9A9A9'>,</span><span style='color:#800080'>31</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[int]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$DaysInMonth</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#A9A9A9'>=</span><span style='color:#FF4500'>$false</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateNotNullOrEmpty</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateRange</span><span style='color:#000000'>(</span><span style='color:#800080'>1</span><span style='color:#A9A9A9'>,</span><span style='color:#800080'>31</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[int]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$today</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#A9A9A9'>=</span><span style='color:#FF4500'>$false</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>allownull</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[int[]]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$holidays</span><span style='color:#A9A9A9'>,</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>parameter</span><span style='color:#000000'>(</span><span style='color:#000000'>Mandatory</span><span style='color:#A9A9A9'>=</span><span style='color:#FF4500'>$false</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#A9A9A9'>[</span><span style='color:#00BFFF'>ValidateNotNullOrEmpty</span><span style='color:#000000'>(</span><span style='color:#000000'>)</span><span style='color:#A9A9A9'>]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[System.Management.Automation.Host.Coordinates]</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$cursorPos</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>if</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#A9A9A9'>-not</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$cursorPos</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$cursorPos</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Host</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>UI</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>RawUI</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>CursorPosition</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[int]</span><span style='color:#FF4500'>$cursorInitX</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$cursorPos</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>X</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>if</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$Title</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-eq</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;MonthAndYear&quot;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$strTitle</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Month</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>+</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot; &quot;</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>+</span><span style='color:#000000'>&nbsp;</span><span style='color:#008080'>[string]</span><span style='color:#FF4500'>$Year</span><span style='color:#000000'>&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>else</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$strTitle</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$Month</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[int]</span><span style='color:#FF4500'>$titleStartPos</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#800080'>20</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$strTitle</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Length</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>/</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>2</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$cursorPos</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>X</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$cursorPos</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>X</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>+</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$titleStartPos</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Host</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>UI</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>RawUI</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>CursorPosition</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$cursorPos</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$strTitle</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$cursorPos</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>X</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$cursorPos</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>X</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$titleStartPos</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$cursorPos</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Y</span><span style='color:#A9A9A9'>++</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Host</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>UI</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>RawUI</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>CursorPosition</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$cursorPos</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Su Mo Tu We Th Fr Sa&quot;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$cursorPos</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>Y</span><span style='color:#A9A9A9'>++</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$firstDayPosArr</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@(</span><span style='color:#800080'>0</span><span style='color:#A9A9A9'>,</span><span style='color:#800080'>3</span><span style='color:#A9A9A9'>,</span><span style='color:#800080'>6</span><span style='color:#A9A9A9'>,</span><span style='color:#800080'>9</span><span style='color:#A9A9A9'>,</span><span style='color:#800080'>12</span><span style='color:#A9A9A9'>,</span><span style='color:#800080'>15</span><span style='color:#A9A9A9'>,</span><span style='color:#800080'>18</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$cursorPos</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>X</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>+=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$firstDayPosArr</span><span style='color:#A9A9A9'>[</span><span style='color:#FF4500'>$FirstDayOfMonth</span><span style='color:#A9A9A9'>]</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>+</span><span style='color:#000000'>&nbsp;&nbsp;</span><span style='color:#800080'>1</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Host</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>UI</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>RawUI</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>CursorPosition</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$cursorPos</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#008080'>[int]</span><span style='color:#FF4500'>$weekDayIndex</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$FirstDayOfMonth</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$d</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>1</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>while</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$d</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-le</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$DaysInMonth</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>for</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$i</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>0</span><span style='color:#000000'>;</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$i</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-le</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>6</span><span style='color:#000000'>;</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$i</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>++</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>if</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$i</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-eq</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$weekDayIndex</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-and</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$d</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-le</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$DaysInMonth</span><span style='color:#000000'>)</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>if</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$d</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-eq</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$today</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'>#Write-Host  $d -ForegroundColor Cyan</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>if</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$d</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-lt</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>10</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$cursorPos</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>X</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-=</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>1</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Host</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>UI</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>RawUI</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>CursorPosition</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#FF4500'>$cursorPos</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#8B0000'>&quot; &quot;</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>+</span><span style='color:#000000'>&nbsp;</span><span style='color:#008080'>[string]</span><span style='color:#FF4500'>$d</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-BackgroundColor</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Gray</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ForegroundColor</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Black</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$cursorPos</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>X</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>+=</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>1</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Host</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>UI</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>RawUI</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>CursorPosition</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#FF4500'>$cursorPos</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>else</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$d</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-BackgroundColor</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Gray</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ForegroundColor</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Black</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>elseif</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$holidays</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-contains</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$d</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Host</span><span style='color:#000000'>&nbsp;&nbsp;</span><span style='color:#FF4500'>$d</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ForegroundColor</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Magenta</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>else</span><span style='color:#000000'>&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$d</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-NoNewline</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$cursorPos</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>X</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>+=</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>3</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>if</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$d</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>+</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>1</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-eq</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>10</span><span style='color:#000000'>)</span><span style='color:#000000'>{</span><span style='color:#FF4500'>$cursorPos</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>X</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-=</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>1</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Host</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>UI</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>RawUI</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>CursorPosition</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#FF4500'>$cursorPos</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$weekDayIndex</span><span style='color:#A9A9A9'>++</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$d</span><span style='color:#A9A9A9'>++</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$weekDayIndex</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>0</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$cursorPos</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>y</span><span style='color:#A9A9A9'>++</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$cursorPos</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>X</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$cursorInitX</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>if</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#FF4500'>$d</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>-lt</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>10</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>)</span><span style='color:#000000'>{</span><span style='color:#FF4500'>$cursorPos</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>X</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>+=</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>1</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#FF4500'>$Host</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>UI</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>RawUI</span><span style='color:#A9A9A9'>.</span><span style='color:#000000'>CursorPosition</span><span style='color:#000000'>&nbsp;</span><span style='color:#A9A9A9'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#FF4500'>$cursorPos</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
    </div>
    <footer class="footer">
    <div class="container footer-container" >
        <div class="row">
            <div class="hidden-xs footer-heading">
            </div>
        </div>
        <div class="row">
            <div class="col-sm-offset-1 col-sm-1 footer-heading">
                <span><a href="/policies/Contact">Contact Us</a></span>
            </div>
            <div class="col-sm-1 footer-heading">
                <span><a href="/policies/Terms">Terms of Use</a></span>
            </div>
            <div class="col-sm-1 footer-heading">
                <span><a href="https://go.microsoft.com/fwlink/?LinkId=521839">Privacy Policy</a></span>
            </div>
            <div class="col-sm-1 footer-heading">
                <span><a href="https://aka.ms/psgallery-status/">Gallery Status</a></span>
            </div>
            <div class="col-sm-1 footer-heading">
                <span><a href="https://github.com/PowerShell/PowerShellGallery/issues">Feedback</a></span>
            </div>
            <div class="col-sm-1 footer-heading">
                <span><a href="https://aka.ms/PSGalleryPreviewFAQ">FAQs</a></span>
            </div>
            <div class="col-sm-4 footer-heading">
                <span class="footer-heading-last">&copy; 2022 Microsoft Corporation</span>
            </div>
        </div>  
    </div>
</footer>

    <script src="/Scripts/gallery/site.min.js?v=yowUC4LjtuEDFqBbt8mrSvw5D4Wp7o0dyNkck0RyrPs1"></script>

    
</body>
</html>
