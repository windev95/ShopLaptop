<%-- 
    Document   : support
    Created on : Dec 3, 2016, 6:10:09 PM
    Author     : BoyIt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vn">
    <head>        
        <title>Liên hệ</title>
        <jsp:include page = "layout/head.jsp"></jsp:include>
    </head>
    <body>
        <div id="page-wrapper">
        <jsp:include page = "layout/header.jsp"></jsp:include>
        <div id="site-content">
        <!--MAIN
        =========================================================================== -->
        <div id="main">
                <section class="page_title">
                    <h1 class="text-center">Liên hệ</h1>
                </section>
                <div class="header-breadcrumb">
                    <div class="container">
                        <div class="row ">
                            <div class="col-xs-12">
                                <ol class="breadcrumb">
                                    <li><a href="/" title="Trang chủ">Trang chủ </a> </li>
                                    <li class="active breadcrumb-title">Liên hệ</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <style>
                    .header-breadcrumb {
                        margin-bottom: 0px !important;
                    }
                </style>
<!--                <div class="ggmap" id="ggmap">                   -->
<!--                    <script type="text/javascript">
                        (jQuery)(document).ready(function ($) {
                            if ($('#ggmap').length) {
                                $('#ggmap').gMap({
                                    zoom: 18,
                                    scrollwheel: true,
                                    maptype: 'ROADMAP',
                                    scaleControl: true,
                                    scrollwheel: false,
                                    panControl: true,
                                    streetViewControl: false,
                                    draggable: true,
                                    markers: [{
                                        address: '266 Đội Cấn, Ba Đình, Hà Nội',
                                        html: '_address'
                                    }]
                                });
                            }
                        });
                        /**
                 * jQuery gMap - Google Maps API V3
                 *
                 * @license MIT License; http://www.opensource.org/licenses/mit-license.php
                 * @url		http://github.com/marioestrada/jQuery-gMap
                 * @author	Mario Estrada <me@mario.ec> based on original plugin by Cedric Kastner <cedric@nur-text.de>
                 * @version	2.1.4
                 */
                        (function ($) {
                            $.fn.gMap = function (options, methods_options) {
                                switch (options) {
                                    case "addMarker":
                                        return $(this).trigger("gMap.addMarker", [methods_options.latitude, methods_options.longitude, methods_options.content, methods_options.icon, methods_options.popup]);
                                    case "centerAt":
                                        return $(this).trigger("gMap.centerAt", [methods_options.latitude, methods_options.longitude, methods_options.zoom]);
                                    case "clearMarkers":
                                        return $(this).trigger("gMap.clearMarkers")
                                }
                                var opts = $.extend({}, $.fn.gMap.defaults, options);
                                return this.each(function () {
                                    var $gmap = new google.maps.Map(this);
                                    $(this).data("gMap.reference", $gmap);
                                    var $geocoder = new google.maps.Geocoder;
                                    if (opts.address) {
                                        $geocoder.geocode({
                                            address: opts.address
                                        }, function (gresult, status) {
                                            if (gresult && gresult.length) $gmap.setCenter(gresult[0].geometry.location)
                                        })
                                    } else {
                                        if (opts.latitude && opts.longitude) {
                                            $gmap.setCenter(new google.maps.LatLng(opts.latitude, opts.longitude))
                                        } else {
                                            if ($.isArray(opts.markers) && opts.markers.length > 0) {
                                                if (opts.markers[0].address) {
                                                    $geocoder.geocode({
                                                        address: opts.markers[0].address
                                                    }, function (gresult, status) {
                                                        if (gresult && gresult.length > 0) $gmap.setCenter(gresult[0].geometry.location)
                                                    })
                                                } else {
                                                    $gmap.setCenter(new google.maps.LatLng(opts.markers[0].latitude, opts.markers[0].longitude))
                                                }
                                            } else {
                                                $gmap.setCenter(new google.maps.LatLng(34.885931, 9.84375))
                                            }
                                        }
                                    }
                                    $gmap.setZoom(opts.zoom);
                                    $gmap.setMapTypeId(google.maps.MapTypeId[opts.maptype]);
                                    var map_options = {
                                        scrollwheel: opts.scrollwheel,
                                        disableDoubleClickZoom: !opts.doubleclickzoom
                                    };
                                    if (opts.controls === false) {
                                        $.extend(map_options, {
                                            disableDefaultUI: true
                                        })
                                    } else if (opts.controls.length != 0) {
                                        $.extend(map_options, opts.controls, {
                                            disableDefaultUI: true
                                        })
                                    }
                                    $gmap.setOptions(map_options);
                                    var gicon = new google.maps.Marker;
                                    marker_icon = new google.maps.MarkerImage(opts.icon.image);
                                    marker_icon.size = new google.maps.Size(opts.icon.iconsize[0], opts.icon.iconsize[1]);
                                    marker_icon.anchor = new google.maps.Point(opts.icon.iconanchor[0], opts.icon.iconanchor[1]);
                                    gicon.setIcon(marker_icon);
                                    if (opts.icon.shadow) {
                                        marker_shadow = new google.maps.MarkerImage(opts.icon.shadow);
                                        marker_shadow.size = new google.maps.Size(opts.icon.shadowsize[0], opts.icon.shadowsize[1]);
                                        marker_shadow.anchor = new google.maps.Point(opts.icon.shadowanchor[0], opts.icon.shadowanchor[1]);
                                        gicon.setShadow(marker_shadow)
                                    }
                                    $(this).bind("gMap.centerAt", function (e, latitude, longitude, zoom) {
                                        if (zoom) $gmap.setZoom(zoom);
                                        $gmap.panTo(new google.maps.LatLng(parseFloat(latitude), parseFloat(longitude)))
                                    });
                                    var overlays = [];
                                    $(this).bind("gMap.clearMarkers", function () {
                                        while (overlays[0]) {
                                            overlays.pop().setMap(null)
                                        }
                                    });
                                    var last_infowindow;
                                    $(this).bind("gMap.addMarker", function (e, latitude, longitude, content, icon, popup) {
                                        var glatlng = new google.maps.LatLng(parseFloat(latitude), parseFloat(longitude));
                                        var gmarker = new google.maps.Marker({
                                            position: glatlng
                                        });
                                        if (icon) {
                                            marker_icon = new google.maps.MarkerImage(icon.image);
                                            marker_icon.size = new google.maps.Size(icon.iconsize[0], icon.iconsize[1]);
                                            marker_icon.anchor = new google.maps.Point(icon.iconanchor[0], icon.iconanchor[1]);
                                            gmarker.setIcon(marker_icon);
                                            if (icon.shadow) {
                                                marker_shadow = new google.maps.MarkerImage(icon.shadow);
                                                marker_shadow.size = new google.maps.Size(icon.shadowsize[0], icon.shadowsize[1]);
                                                marker_shadow.anchor = new google.maps.Point(icon.shadowanchor[0], icon.shadowanchor[1]);
                                                gicon.setShadow(marker_shadow)
                                            }
                                        } else {
                                            gmarker.setIcon(gicon.getIcon());
                                            gmarker.setShadow(gicon.getShadow())
                                        }
                                        if (content) {
                                            if (content == "_latlng") content = latitude + ", " + longitude;
                                            var infowindow = new google.maps.InfoWindow({
                                                content: opts.html_prepend + content + opts.html_append
                                            });
                                            google.maps.event.addListener(gmarker, "click", function () {
                                                last_infowindow && last_infowindow.close();
                                                infowindow.open($gmap, gmarker);
                                                last_infowindow = infowindow
                                            });
                                            if (popup) {
                                                google.maps.event.addListenerOnce($gmap, "tilesloaded", function () {
                                                    infowindow.open($gmap, gmarker)
                                                })
                                            }
                                        }
                                        gmarker.setMap($gmap);
                                        overlays.push(gmarker)
                                    });
                                    for (var j = 0; j < opts.markers.length; j++) {
                                        marker = opts.markers[j];
                                        if (marker.address) {
                                            if (marker.html == "_address") marker.html = marker.address;
                                            var $this = this;
                                            $geocoder.geocode({
                                                address: marker.address
                                            }, function (marker, $this) {
                                                return function (gresult, status) {
                                                    if (gresult && gresult.length > 0) {
                                                        $($this).trigger("gMap.addMarker", [gresult[0].geometry.location.lat(), gresult[0].geometry.location.lng(), marker.html, marker.icon, marker.popup])
                                                    }
                                                }
                                            }(marker, $this))
                                        } else {
                                            $(this).trigger("gMap.addMarker", [marker.latitude, marker.longitude, marker.html, marker.icon, marker.popup])
                                        }
                                    }
                                })
                            };
                            $.fn.gMap.defaults = {
                                address: "",
                                latitude: 0,
                                longitude: 0,
                                zoom: 1,
                                markers: [],
                                controls: [],
                                scrollwheel: false,
                                doubleclickzoom: true,
                                maptype: "ROADMAP",
                                html_prepend: '<div class="gmap_marker">',
                                html_append: "</div>",
                                icon: {
                                    image: "//bizweb.dktcdn.net/100/052/640/themes/134620/assets/marker.png?1479951271873",
                                    shadow: "",
                                    iconsize: [59, 49],
                                    shadowsize: [0, 0],
                                    iconanchor: [9, 34],
                                    shadowanchor: [6, 34]
                                }
                            }
                        })(jQuery);
                    </script>-->
<!--                </div>-->
                <br/>
                <section class="section-contact">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-5 col-md-push-7">
                                <div class="widget-item">
                                    <a href="#" class="contact-logo"><img src="//bizweb.dktcdn.net/100/052/640/themes/134620/assets/logo1.png?1479951271873" alt=""></a>
                                    <ul class="widget-menu">
                                        <li class="widget-address"><span>Rengar mang lại cho bạn một không gian sống hoàn toàn mới với các dòng sản phẩm về nội thất chất lượng cao, chủng loại phong phú và đa dạng.</span></li>
                                        <li class="widget-address"><i class="fa fa-map-marker"></i> <span>Tầng 4 - Tòa nhà Hanoi Group - 442 Đội Cấn - Ba Đình - Hà Nội</span></li>
                                        <li><i class="fa fa-phone"></i> <span>(04) 6674 2332</span></li>
                                        <li><i class="fa fa-envelope"></i> <span>support@bizweb.vn</span></li>
                                    </ul>
                                    <!-- End .widget-menu -->
                                </div>
                                <!-- End .widget-item -->
                            </div>
                            <div class="col-md-7 col-md-pull-5">
                                <div class="section-article contactpage">
                                    <form accept-charset='UTF-8' action='/contact' id='contact' method='post'>
                                        <input name='FormType' type='hidden' value='contact' />
                                        <input name='utf8' type='hidden' value='true' />
                                        <!--form-errors-custom-->
                                        <div class="notification_contact"><p>Gửi liên hệ thành công!</p></div>
                                        <!--End. form-errors-custom-->
                                        <div class="form-inline form-comment">
                                            <div class="form-group">
                                                <label for="name">Họ tên</label>
                                                <input id="name" name="contact[Name]" type="text" value="" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="email">Email <span class="text-danger">*</span></label>
                                                <input id="email" name="contact[email]" class="form-control" type="email" value="" required>
                                            </div>

                                            <div class="form-group">
                                                <label for="message">Lời nhắn <span class="text-danger">*</span></label>
                                                <textarea id="message" name="contact[Body]" class="form-control custom-control" rows="3" required></textarea>
                                            </div>
                                            <button type="submit" id="submitlienhe" class="btn btn-default">Gửi nhận xét</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        <!--/MAIN-->
        </div>        
        <!-- SITE FOOTER
        =========================================================================== -->
        <jsp:include page = "layout/brand.jsp"></jsp:include>
        <jsp:include page = "layout/footer.jsp"></jsp:include>
        <!-- /SITE FOOTER -->
    </div>
    <jsp:include page = "layout/script.jsp"></jsp:include>
    </body>
</html>