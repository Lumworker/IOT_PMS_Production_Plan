<%@ Page Title="แจ้งยอดการผลิต" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PMS.aspx.cs" Inherits="IOT_PMS_Production_Plan.PMS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .title-text {
            float: left;
            margin-left: 1rem;
            margin-top: 1rem;
            font-size: 15px;
        }

        .panel {
            border: 0px;
        }

        .bg-deep-blue {
            background-color: #014fa1;
            /*padding-left: 2px;*/
        }

        .bg-white-blue {
            background-color: #0057a7;
        }

        .bg-sky-blue {
            background-color: #2ebfee;
        }

        .bg-deep-pink {
            background-color: #ac0e6d;
            /*padding-left: 2px;*/
        }

        .bg-white-pink {
            background-color: #eb088b;
        }

        .text-red {
            color: red;
        }

        .text-white {
            color: whitesmoke;
        }

        .text-blue {
            color: #2ebfee;
        }

        .no-padding {
            padding-right: 0 !important;
            padding-left: 0 !important;
        }

        .max-wide {
            max-width: 100%;
        }

        .min-wide {
            min-width: 100%;
        }

        .datepicker {
            background: #333;
            border: 1px solid #555;
            color: #EEE;
        }

        .nav-tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #f1f1f1;
        }

        .ui-datepicker {
            z-index: 2 !important;
        }

        .btn-margin-left {
            margin-left: 2px;
        }

        .red {
            color: red;
        }

        .img-thumbnail {
            display: inline-block;
            max-width: 100%;
            padding: 4px;
            line-height: 1.42857143;
            border: 1px solid #ddd;
            border-radius: 4px;
            -webkit-transition: all .2s ease-in-out;
            -o-transition: all .2s ease-in-out;
            transition: all .2s ease-in-out;
        }

        input[type=checkbox] {
            /* Double-sized Checkboxes */
            -ms-transform: scale(2); /* IE */
            -moz-transform: scale(2); /* FF */
            -webkit-transform: scale(2); /* Safari and Chrome */
            -o-transform: scale(2); /* Opera */
            transform: scale(2);
            padding: 10px;
            margin-right: 1em;
            margin-bottom: 1em;
        }

        input[type=radio] {
            /* Double-sized Checkboxes */
            -ms-transform: scale(2); /* IE */
            -moz-transform: scale(2); /* FF */
            -webkit-transform: scale(2); /* Safari and Chrome */
            -o-transform: scale(2); /* Opera */
            transform: scale(2);
            padding: 10px;
            margin-right: 1em;
            margin-bottom: 1em;
        }

        /* Might want to wrap a span around your checkbox text */
        .checkboxtext {
            /* Checkbox text */
            font-size: 110%;
            display: inline;
        }

        .sorting_1 {
            text-align: center;
        }

        .center {
            text-align: center;
        }

        .att-margin {
            margin-top: 2.5rem;
        }

        .boxlohinform {
            background-color: #fff;
            padding: 10px;
            -webkit-border-radius: 10px 10px 10px 10px;
            border-radius: 10px 10px 10px 10px;
            -webkit-box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
            box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
        }


        .fadeInDown {
            -webkit-animation-name: fadeInDown;
            animation-name: fadeInDown;
            -webkit-animation-duration: 1s;
            animation-duration: 1s;
            -webkit-animation-fill-mode: both;
            animation-fill-mode: both;
        }

        @-webkit-keyframes fadeInDown {
            0% {
                opacity: 0;
                -webkit-transform: translate3d(0, -100%, 0);
                transform: translate3d(0, -100%, 0);
            }

            100% {
                opacity: 1;
                -webkit-transform: none;
                transform: none;
            }
        }

        @keyframes fadeInDown {
            0% {
                opacity: 0;
                -webkit-transform: translate3d(0, -100%, 0);
                transform: translate3d(0, -100%, 0);
            }

            100% {
                opacity: 1;
                -webkit-transform: none;
                transform: none;
            }
        }

        @-webkit-keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        @-moz-keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        .fadeIn {
            opacity: 0;
            -webkit-animation: fadeIn ease-in 1;
            -moz-animation: fadeIn ease-in 1;
            animation: fadeIn ease-in 1;
            -webkit-animation-fill-mode: forwards;
            -moz-animation-fill-mode: forwards;
            animation-fill-mode: forwards;
            -webkit-animation-duration: 1s;
            -moz-animation-duration: 1s;
            animation-duration: 1s;
        }

            .fadeIn.first {
                padding-top: 15px;
                padding-bottom: 15px;
                -webkit-animation-delay: 0.4s;
                -moz-animation-delay: 0.4s;
                animation-delay: 0.4s;
            }

            .fadeIn.second {
                -webkit-animation-delay: 0.6s;
                -moz-animation-delay: 0.6s;
                animation-delay: 0.6s;
            }

            .fadeIn.third {
                -webkit-animation-delay: 0.8s;
                -moz-animation-delay: 0.8s;
                animation-delay: 0.8s;
            }

            .fadeIn.fourth {
                -webkit-animation-delay: 1s;
                -moz-animation-delay: 1s;
                animation-delay: 1s;
            }

        .underlineHover:after {
            display: block;
            left: 0;
            bottom: -10px;
            width: 0;
            height: 2px;
            background-color: #56baed;
            content: "";
            transition: width 0.2s;
        }

        .underlineHover:hover {
            color: #0d0d0d;
        }

            .underlineHover:hover:after {
                width: 100%;
            }

        .inpu-number {
            margin-left: 11px;
        }

        *:focus {
            outline: none;
        }

        #icon {
            width: 60%;
        }

        * {
            box-sizing: border-box;
        }

        * {
            font-family: 'Kanit', sans-serif;
        }

        .topborder {
            border-top-style: solid;
            border-right-style: solid;
            border-left-style: solid;
            border-width: 1px;
        }

        .border {
            border-right-style: solid;
            border-bottom-style: solid;
            border-left-style: solid;
            border-width: 1px;
        }

        .shadow {
            box-shadow: 0px 7px 7px grey;
            border-radius: unset;
        }
    </style>

    <div class="liffAppContent">
        <div class="animate form login_form boxlohinform fadeInDown">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="col-md-10 col-xs-10" style="text-align: left; font-size: 30px;">
                        <h2>แจ้งยอดการผลิต</h2>
                    </div>

                    <div class="col-md-2 col-xs-2" style="margin-top: 20px;">
                    </div>
                    <hr />
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-xs-12">
                    <input type="text" class="form-control max-wide" style="font-size: 18px; display: none" id="LineTokenLine">
                    <div id="smartwizard">
                        <ul class="col-md-12 col-xs-12" style="margin-left: 10px; margin-top: 0.5em; max-width: 354px;">
                            <li class="check" data-step="Step1"><a href="#step-1">น้ำแข็งหลอดใหญ่ B</a></li>
                            <li class="check" data-step="Step2"><a href="#step-2">น้ำแข็งหลอดเล็ก S</a></li>
                        </ul>
                        <div class="col-md-12 col-xs-12">
                            <div id="step-1">
                                <div class="col-xs-12 col-md-12 ">
                                    <div class="shadow">
                                        <div class="row topborder" style="min-height: 30px;">
                                            <div class="col-md-12 col-xs-12">
                                                <div class="row bg-white-blue">
                                                    <div class="col-xs-12 col-md-12 ">
                                                        <div class="card">
                                                            <div class="card-body">
                                                                <br />
                                                                <p class="card-text" style="font-size: 20px; color: white; text-align: center;">
                                                                    น้ำแข็งหลอดใหญ่
                                                                </p>
                                                                <p class="card-text" style="font-size: 30px; color: white; text-align: center;">
                                                                    B
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-md-12 ">
                                                <div class="row">
                                                    <div class="col-xs-12 col-md-12 topborder bg-white-blue">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row">
                                                                    <label class="title-text  text-white" style="text-align: center; font-size: 18px;">ประเภท </label>
                                                                </div>
                                                            </div>
                                                            <%--col 0-1--%>
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row">
                                                                    <label class="title-text text-white" style="text-align: center; font-size: 18px;">ยอดการสั่งผลิต</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <%--col 0-2--%>
                                                    </div>
                                                </div>
                                                <%--End row0--%>
                                                <div class="row">
                                                    <div class="col-xs-12 col-md-12 border bg-deep-blue">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row">
                                                                    <div class="col-md-3 no-padding">
                                                                        <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 13px;">B</label>
                                                                    </div>
                                                                    <div class="col-md-9 no-padding">
                                                                        <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 18px; font-weight: bold;">กระสอบ </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <%--col 1-1--%>
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row" style="margin-top: 5px;">
                                                                    <div class="col-xs-2 col-md-2">
                                                                        <button class="btn btn-warning btn-circle btn-sm btnback Operator" data-type="" type="button">-</button>
                                                                    </div>
                                                                    <div class="col-xs-6 col-md-6">
                                                                        <input type="number" class="form-control max-wide inpu-number no-padding center Operator" style="font-size: 18px;" id="text_B" value="0">
                                                                    </div>
                                                                    <div class="col-xs-2 col-md-2">
                                                                        <button class="btn btn-warning btn-circle btn-sm btnnext Operator" data-type="" type="button">+</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <%--col 1-2--%>
                                                    </div>
                                                </div>
                                                <%--End row1--%>
                                                <div class="row">
                                                    <div class="col-xs-12 col-md-12 border bg-white-blue">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row">
                                                                    <div class="col-md-3 no-padding">
                                                                        <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 13px;">PB</label>
                                                                    </div>
                                                                    <div class="col-md-9 no-padding">
                                                                        <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 18px; font-weight: bold;">แพ็คใหญ่ </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <%--col 2-1--%>
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row" style="margin-top: 5px;">
                                                                    <div class="col-xs-2 col-md-2">
                                                                        <button class="btn btn-warning btn-circle btn-sm btnback Operator" data-type="" type="button">-</button>
                                                                    </div>
                                                                    <div class="col-xs-6 col-md-6">
                                                                        <input type="number" class="form-control max-wide inpu-number no-padding center Operator" style="font-size: 18px;" id="text_PB" value="0">
                                                                    </div>
                                                                    <div class="col-xs-2 col-md-2">
                                                                        <button class="btn btn-warning btn-circle btn-sm btnnext Operator" data-type="" type="button">+</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <%--col 2-2--%>
                                                    </div>
                                                </div>
                                                <%--End row2--%>
                                                <div class="row">
                                                    <div class="col-xs-12 col-md-12 border bg-deep-blue">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row">
                                                                    <div class="col-md-3 no-padding">
                                                                        <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 13px;">P2</label>
                                                                    </div>
                                                                    <div class="col-md-9 no-padding">
                                                                        <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 18px; font-weight: bold;">เบล</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <%--col 3-1--%>
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row" style="margin-top: 5px;">
                                                                    <div class="col-xs-2 col-md-2">
                                                                        <button class="btn btn-warning btn-circle btn-sm btnback Operator" data-type="" type="button">-</button>
                                                                    </div>
                                                                    <div class="col-xs-6 col-md-6">
                                                                        <input type="number" class="form-control max-wide inpu-number no-padding center Operator" style="font-size: 18px;" id="text_P2" value="0">
                                                                    </div>
                                                                    <div class="col-xs-2 col-md-2">
                                                                        <button class="btn btn-warning btn-circle btn-sm btnnext Operator" data-type="" type="button">+</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <%--col 3-2--%>
                                                    </div>
                                                </div>
                                                <%--End row3--%>
                                                <div class="row">
                                                    <div class="col-xs-12 col-md-12 border bg-white-blue">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row">
                                                                    <div class="col-md-3 no-padding">
                                                                        <label class="title-text text-white input-number no-padding " style="position: inherit; font-size: 13px;">PC-B</label>
                                                                    </div>
                                                                    <div class="col-md-9 no-padding">
                                                                        <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 18px; font-weight: bold;">ใหญ่โม่</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <%--col 4-1--%>
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row" style="margin-top: 5px;">
                                                                    <div class="col-xs-2 col-md-2">
                                                                        <button class="btn btn-warning btn-circle btn-sm btnback Operator" data-type="" type="button">-</button>
                                                                    </div>
                                                                    <div class="col-xs-6 col-md-6">
                                                                        <input type="number" class="form-control max-wide inpu-number no-padding center Operator" style="font-size: 18px;" id="text_PC_B" value="0">
                                                                    </div>
                                                                    <div class="col-xs-2 col-md-2">
                                                                        <button class="btn btn-warning btn-circle btn-sm btnnext Operator" data-type="" type="button">+</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <%--col 4-2--%>
                                                    </div>
                                                </div>
                                                <%--End row4--%>
                                                <div class="row">
                                                    <div class="col-xs-12 col-md-12 border bg-deep-blue">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row">
                                                                    <div class="col-md-3 no-padding">
                                                                        <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 13px;">R</label>
                                                                    </div>
                                                                    <div class="col-md-9 no-padding">
                                                                        <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 18px; font-weight: bold;">เศษใหญ่โม่</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <%--col 5-1--%>
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row" style="margin-top: 5px;">
                                                                    <div class="col-xs-2 col-md-2">
                                                                        <button class="btn btn-warning btn-circle btn-sm btnback Operator" data-type="" type="button">-</button>
                                                                    </div>
                                                                    <div class="col-xs-6 col-md-6">
                                                                        <input type="number" class="form-control max-wide inpu-number no-padding center Operator" style="font-size: 18px;" id="text_R" value="0">
                                                                    </div>
                                                                    <div class="col-xs-2 col-md-2">
                                                                        <button class="btn btn-warning btn-circle btn-sm btnnext Operator" data-type="" type="button">+</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <%--col 5-2--%>
                                                    </div>
                                                </div>
                                                <%--End row5--%>
                                            </div>
                                        </div>
                                    </div>

                                    <%--End shadow 1--%>
                                    <div class="row Technician" style="margin-top: 0.5em; display: none">
                                        <div class="col-xs-12 col-md-12 shadow">
                                            <div class="row">
                                                <div class="col-md-12 col-xs-12 no-padding">
                                                    <div class="col-md-8 col-xs-8">
                                                        <div class="row" style="padding-top: 1em; min-height: 70px;">
                                                            <div class="col-xs-4 col-md-4  ">
                                                                <span class="text-blue">
                                                                    <i class="fa fa-circle-o-notch" aria-hidden="true" style="font-size: 40px;"></i>
                                                                </span>
                                                            </div>
                                                            <div class="col-xs-8 col-md-8  no-padding" style="text-align: center;">
                                                                <span class="text-blue">
                                                                    <b style="font-size: 19px;">จำนวนรอบเดินเครื่อง</b>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 col-xs-4 bg-sky-blue">
                                                        <div class="row" style="padding-top: 1em; min-height: 70px;">
                                                            <div class="col-xs-12 col-md-12">
                                                                <span class="text-white">
                                                                    <b style="font-size: 25px;" id="text_Cycle_B"></b>
                                                                    <b style="font-size: 25px;">รอบ</b>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%--col 6-1--%>
                                            </div>
                                        </div>
                                    </div>
                                    <%--End row6--%>
                                    <div class="row Technician" style="margin-top: 0.5em; display: none">
                                        <div class="col-xs-12 col-md-12 shadow" id="div_Cycle_B">
                                            <%--<div class="row">
                                                <div class="col-xs-12 col-md-12  bg-sky-blue">
                                                    <div class="row">
                                                        <div class="col-md-6 col-xs-6 ">
                                                            <div class="row">
                                                                <div class="col-md-12 no-padding">
                                                                    <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 18px; font-weight: bold;">TI-03</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 col-xs-6 ">
                                                            <div class="row" style="margin-top: 5px;">
                                                                <div class="col-xs-2 col-md-2">
                                                                    <button class="btn btn-warning btn-circle btn-sm btnback " data-type="" type="button">-</button>
                                                                </div>
                                                                <div class="col-xs-6 col-md-6">
                                                                    <input type="number" class="form-control max-wide inpu-number no-padding center " style="font-size: 18px;" id="" value="0">
                                                                </div>
                                                                <div class="col-xs-2 col-md-2">
                                                                    <button class="btn btn-warning btn-circle btn-sm btnnext " data-type="" type="button">+</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>--%>
                                            <%--End row7--%>
                                            <%--<div class="row">
                                                <div class="col-xs-12 col-md-12  bg-sky-blue shadow">
                                                    <div class="row">
                                                        <div class="col-md-6 col-xs-6 ">
                                                            <div class="row">
                                                                <div class="col-md-12 no-padding">
                                                                    <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 18px; font-weight: bold;">TI-04</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 col-xs-6 ">
                                                            <div class="row" style="margin-top: 5px;">
                                                                <div class="col-xs-2 col-md-2">
                                                                    <button class="btn btn-warning btn-circle btn-sm btnback " data-type="" type="button">-</button>
                                                                </div>
                                                                <div class="col-xs-6 col-md-6">
                                                                    <input type="number" class="form-control max-wide inpu-number no-padding center " style="font-size: 18px;" id="" value="0">
                                                                </div>
                                                                <div class="col-xs-2 col-md-2">
                                                                    <button class="btn btn-warning btn-circle btn-sm btnnext " data-type="" type="button">+</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>--%>
                                            <%--End row8--%>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top: 0.5em;">
                                        <div class="col-xs-12 col-md-12 shadow">
                                            <div class="row" style="margin-top: 1em; margin-bottom: 1em;">
                                                <div class="col-xs-12 col-md-12">
                                                    <div class="row">
                                                        <div class="col-xs-12 col-md-12">
                                                            <button type="button" class="btn btn-success btn-lg" style="width: 100%" id="nextPage2">next</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <%--End row9--%>
                                        </div>
                                    </div>
                                </div>
                                <%--End Menu 1--%>
                            </div>
                            <%-- End Step 1 --%>
                            <div id="step-2">
                                <div class="col-xs-12 col-md-12 ">
                                    <div class="shadow">
                                        <div class="row topborder" style="min-height: 30px;">
                                            <div class="col-md-12 col-xs-12">
                                                <div class="row bg-white-pink">
                                                    <div class="col-xs-12 col-md-12 ">
                                                        <div class="card">
                                                            <div class="card-body">
                                                                <br />
                                                                <p class="card-text" style="font-size: 20px; color: white; text-align: center;">
                                                                    น้ำแข็งหลอดเล็ก
                                                                </p>
                                                                <p class="card-text" style="font-size: 30px; color: white; text-align: center;">
                                                                    S
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-md-12 ">
                                                <div class="row">
                                                    <div class="col-xs-12 col-md-12 topborder bg-white-pink">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row">
                                                                    <label class="title-text  text-white" style="text-align: center; font-size: 18px;">ประเภท </label>
                                                                </div>
                                                            </div>
                                                            <%--col 0-1--%>
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row">
                                                                    <label class="title-text text-white" style="text-align: center; font-size: 18px;">ยอดการสั่งผลิต</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <%--col 0-2--%>
                                                    </div>
                                                </div>
                                                <%--End row0--%>
                                                <div class="row">
                                                    <div class="col-xs-12 col-md-12 border bg-deep-pink">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row">
                                                                    <div class="col-md-3 no-padding">
                                                                        <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 13px;">S</label>
                                                                    </div>
                                                                    <div class="col-md-9 no-padding">
                                                                        <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 18px; font-weight: bold;">กระสอบ </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <%--col 1-1--%>
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row" style="margin-top: 5px;">
                                                                    <div class="col-xs-2 col-md-2">
                                                                        <button class="btn btn-warning btn-circle btn-sm btnback Operator" data-type="" type="button">-</button>
                                                                    </div>
                                                                    <div class="col-xs-6 col-md-6">
                                                                        <input type="number" class="form-control max-wide inpu-number no-padding center Operator" style="font-size: 18px;" id="text_S" value="0">
                                                                    </div>
                                                                    <div class="col-xs-2 col-md-2">
                                                                        <button class="btn btn-warning btn-circle btn-sm btnnext Operator" data-type="" type="button">+</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <%--col 1-2--%>
                                                    </div>
                                                </div>
                                                <%--End row1--%>
                                                <div class="row">
                                                    <div class="col-xs-12 col-md-12 border bg-white-pink">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row">
                                                                    <div class="col-md-3 no-padding">
                                                                        <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 13px;">PS</label>
                                                                    </div>
                                                                    <div class="col-md-9 no-padding">
                                                                        <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 18px; font-weight: bold;">แพ็คใหญ่ </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <%--col 2-1--%>
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row" style="margin-top: 5px;">
                                                                    <div class="col-xs-2 col-md-2">
                                                                        <button class="btn btn-warning btn-circle btn-sm btnback Operator" data-type="" type="button">-</button>
                                                                    </div>
                                                                    <div class="col-xs-6 col-md-6">
                                                                        <input type="number" class="form-control max-wide inpu-number no-padding center Operator" style="font-size: 18px;" id="text_PS" value="0">
                                                                    </div>
                                                                    <div class="col-xs-2 col-md-2">
                                                                        <button class="btn btn-warning btn-circle btn-sm btnnext Operator" data-type="" type="button">+</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <%--col 2-2--%>
                                                    </div>
                                                </div>
                                                <%--End row2--%>
                                                <div class="row">
                                                    <div class="col-xs-12 col-md-12 border bg-deep-pink">
                                                        <div class="row">
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row">
                                                                    <div class="col-md-3 no-padding">
                                                                        <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 13px;">PC-S</label>
                                                                    </div>
                                                                    <div class="col-md-9 no-padding">
                                                                        <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 18px; font-weight: bold;">เล็กโม่</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <%--col 3-1--%>
                                                            <div class="col-md-6 col-xs-6 ">
                                                                <div class="row" style="margin-top: 5px;">
                                                                    <div class="col-xs-2 col-md-2">
                                                                        <button class="btn btn-warning btn-circle btn-sm btnback Operator" data-type="" type="button">-</button>
                                                                    </div>
                                                                    <div class="col-xs-6 col-md-6">
                                                                        <input type="number" class="form-control max-wide inpu-number no-padding center Operator" style="font-size: 18px;" id="text_PC_S" value="0">
                                                                    </div>
                                                                    <div class="col-xs-2 col-md-2">
                                                                        <button class="btn btn-warning btn-circle btn-sm btnnext Operator" data-type="" type="button">+</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <%--col 3-2--%>
                                                    </div>
                                                </div>
                                                <%--End row3--%>
                                            </div>
                                        </div>
                                    </div>

                                    <%--End shadow 1--%>
                                    <div class="row Technician" style="margin-top: 0.5em; display: none">
                                        <div class="col-xs-12 col-md-12 shadow">
                                            <div class="row">
                                                <div class="col-md-12 col-xs-12 no-padding">
                                                    <div class="col-md-8 col-xs-8">
                                                        <div class="row" style="padding-top: 1em; min-height: 70px;">
                                                            <div class="col-xs-4 col-md-4  ">
                                                                <span class="text-blue">
                                                                    <i class="fa fa-circle-o-notch" aria-hidden="true" style="font-size: 40px;"></i>
                                                                </span>
                                                            </div>
                                                            <div class="col-xs-8 col-md-8 no-padding" style="text-align: center;">
                                                                <span class="text-blue">
                                                                    <b style="font-size: 19px;">จำนวนรอบเดินเครื่อง</b>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 col-xs-4 bg-white-pink">
                                                        <div class="row" style="padding-top: 1em; min-height: 70px;">
                                                            <div class="col-xs-12 col-md-12">
                                                                <span class="text-white">
                                                                    <b style="font-size: 25px;" id="text_Cycle_S"></b>
                                                                    <b style="font-size: 25px;">รอบ</b>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%--col 6-1--%>
                                            </div>
                                        </div>
                                    </div>
                                    <%--End row6--%>
                                    <div class="row Technician" style="margin-top: 0.5em; display: none">
                                        <div class="col-xs-12 col-md-12 shadow" id="div_Cycle_S">
                                            <%--    <div class="row">
                                                <div class="col-xs-12 col-md-12  bg-white-pink">
                                                    <div class="row">
                                                        <div class="col-md-6 col-xs-6 ">
                                                            <div class="row">
                                                                <div class="col-md-12 no-padding">
                                                                    <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 18px; font-weight: bold;">TI-01</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 col-xs-6 ">
                                                            <div class="row" style="margin-top: 5px;">
                                                                <div class="col-xs-2 col-md-2">
                                                                    <button class="btn btn-warning btn-circle btn-sm btnback " data-type="" type="button">-</button>
                                                                </div>
                                                                <div class="col-xs-6 col-md-6">
                                                                    <input type="number" class="form-control max-wide inpu-number no-padding center " style="font-size: 18px;" id="" value="0">
                                                                </div>
                                                                <div class="col-xs-2 col-md-2">
                                                                    <button class="btn btn-warning btn-circle btn-sm btnnext " data-type="" type="button">+</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>--%>
                                            <%--End row7--%>
                                            <%--<div class="row">
                                                <div class="col-xs-12 col-md-12  bg-white-pink shadow">
                                                    <div class="row">
                                                        <div class="col-md-6 col-xs-6 ">
                                                            <div class="row">
                                                                <div class="col-md-12 no-padding">
                                                                    <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 18px; font-weight: bold;">TI-02</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 col-xs-6 ">
                                                            <div class="row" style="margin-top: 5px;">
                                                                <div class="col-xs-2 col-md-2">
                                                                    <button class="btn btn-warning btn-circle btn-sm btnback " data-type="" type="button">-</button>
                                                                </div>
                                                                <div class="col-xs-6 col-md-6">
                                                                    <input type="number" class="form-control max-wide inpu-number no-padding center " style="font-size: 18px;" id="" value="0">
                                                                </div>
                                                                <div class="col-xs-2 col-md-2">
                                                                    <button class="btn btn-warning btn-circle btn-sm btnnext " data-type="" type="button">+</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>--%>
                                            <%--End row8--%>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top: 0.5em;">
                                        <div class="col-xs-12 col-md-12 shadow">
                                            <div class="row" style="margin-top: 1em; margin-bottom: 1em;">
                                                <div class="col-xs-12 col-md-12 ">
                                                    <div class="row">
                                                        <div class="col-xs-12 col-md-12">
                                                            <b style="font-size: 15px; color: red; display: none" class="TOU">จำนวนรอบเกิน TOU</b>
                                                            <b style="font-size: 13px; color: red; display: none" class="TOU" id="text_TOU"></b>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-xs-12 col-md-12">
                                                            <span style="font-size: 12px;">*หมายเหตุ : น้ำหนักน้ำแข็งรวมคิดจาก กระสอบ 21 kg, แพ็คใหญ่ 12 kg, เบล 18 kg (10 แพ็คเล็ก x 1.8 kg)</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row" style="margin-top: 1em; margin-bottom: 1em;">
                                                <div class="col-xs-12 col-md-12 ">
                                                    <div class="row">
                                                        <div class="col-xs-12 col-md-12">
                                                            <button type="button" class="btn btn-warning btn-lg" style="width: 100%" id="btnSubmit">Submit</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <%--End row9--%>
                                        </div>
                                    </div>

                                </div>
                                <%--End Menu 1--%>
                            </div>
                            <%-- End Step 2 --%>
                            <%-- End Page Menu --%>
                        </div>
                    </div>
                </div>
            </div>
        </div>




    </div>

    <script type="text/javascript">


        $(document).ready(function () {
            var Role = getAllUrlParams("Role");
            var trans_id = getAllUrlParams("trans_id");
            const defaultLiffId = "1656699401-oONYw7jz";   // change the default LIFF value if you are not using a node server
            let myLiffId = "1656699401-oONYw7jz";
            myLiffId = defaultLiffId;
            var userId = "";
            liff.init({
                liffId: myLiffId
            }).then(() => {
                liff.getProfile().then(function (profile) {
                    userId = profile.userId;
                    //userId ="U0cfb6e104a4950d326e9b5354ec6f8dd";//ของอ๋อง
                    //        //alert(userId);
                    //        //alert(Role);
                    //        //alert(trans_id);
                    $("#LineTokenLine").val(userId);
                    $('#smartwizard').smartWizard({
                        theme: 'arrows',
                        keyNavigation: false,
                        showStepURLhash: false,
                        selected: 0, //ใส่ 0 จะเริ่มที่ Step แรกสุด
                        transitionEffect: 'slide',
                        toolbarSettings: { toolbarPosition: 'none', showNextButton: 'false', showPreviousButton: 'false' }
                    });

                    if (Role == "Operator") {
                        if (trans_id != '0') {
                            $('.Technician').css("display", "none");
                            SP_GET_Production_DATA_TV(userId, trans_id, 'Liff_Operator');
                        }
                    }
                    else if (Role == "Technician") {
                        $('.Operator').prop("disabled", true);
                        $('.Technician').css("display", "");
                        SP_GET_Production_Data_Count(userId, trans_id);//ดึงค่ามาสร้างกล่องรอบ
                        SP_GET_Production_Data(userId, trans_id, 2);
                    }
                    SP_GET_Production_Check_TV(userId, Role);//เช็ค Status ของ Trans_id ว่า Step ปัจจุบัน Role นี้สามารถแก้ไขได้หรือไม่


        }).catch(function (error) {
            window.alert('Error getting profile: ' + error);
        });
            })
                .catch ((err) => {
            alert(err)
        });

            $(document).on("click", "#nextPage2", function () {
                $('#smartwizard').data('smartWizard')._showStep(1);
            });

            $(document).on("click", ".btnnext", function () {
                let value = parseInt($(this).closest(".row").find('input').val());
                value++;
                $(this).closest(".row").find('input').val(value);
            });

            $(document).on("click", ".btnback", function () {
                let value = parseInt($(this).closest(".row").find('input').val());
                value--;
                value = value < 0 ? 0 : value;
                $(this).closest(".row").find('input').val(value);
            });

            $(document).on("click", ".btnCycle_S", function () {
                var sum = 0;
                var Maximun = $("#text_Cycle_S").text();
                $(".checkCycle_S").each(function () {
                    sum += + parseInt($(this).val());
                });
                if (sum < Maximun) {
                    $('#btnSubmit').prop("disabled", true);
                    swal('Error', 'กรอกจำนวนต่ำกว่ารอบที่กำหนด', 'error');

                } else {
                    $('#btnSubmit').prop("disabled", false);
                }
            });

            $(document).on("click", ".btnCycle_B", function () {
                var sum = 0;
                var Maximun = $("#text_Cycle_B").text();
                $(".checkCycle_B").each(function () {
                    sum += + parseInt($(this).val());
                });
                if (sum < Maximun) {
                    $('#nextPage2').prop("disabled", true);
                    swal('Error', 'กรอกจำนวนต่ำกว่ารอบที่กำหนด', 'error');
                } else {
                    $('#nextPage2').prop("disabled", false);
                }
            });

            $('.input-number').keypress(function (event) {
                console.log(event.which);
                if (event.which != 8 && isNaN(String.fromCharCode(event.which))) {
                    event.preventDefault();
                }
            });
            
             $(document).on("change", "input[type='number']", function () {
                let value = $(this).val();
                if (value == "" ) {
                    $(this).val(0);
                }
            });


            $(document).on("click", "#btnSubmit", function () {
                var token = $("#LineTokenLine").val();
                let B = $("#text_B").val();
                let PB = $("#text_PB").val();
                let P2 = $("#text_P2").val();
                let PC_B = $("#text_PC_B").val();
                let R = $("#text_R").val();
                let S = $("#text_S").val();
                let PS = $("#text_PS").val();
                let PC_S = $("#text_PC_S").val();
                //alert(token);
                if (Role == "Operator") {
                    swal({
                        title: 'Confirm',
                        text: "กรุณาตรวจสอบความถูกต้องของข้อมูล",
                        icon: 'info',
                        buttons: {
                            cancel: true,
                            confirm: true,
                        },
                    }).then(function (confirm) {
                        if (confirm) {
                            if (trans_id == "0") {
                                $.ajax({
                                    type: "post",
                                    async: false,
                                    url: "<%= ResolveUrl("Default.aspx/SP_Save_Production_Data") %>",
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    data: JSON.stringify({ userId: token, role: 1, B: B, PB: PB, P2: P2, PC_B: PC_B, R: R, S: S, PS: PS, PC_S: PC_S }),
                                    success: function (response) {
                                        var return_trans_ID = response.d;
                                        //alert(trans_ID);
                                        SendMessage_Confirm(Role, return_trans_ID);
                                    }
                                });
                            }
                            else if (trans_id != "0") {
                                $.ajax({
                                    type: "post",
                                    async: false,
                                    url: "<%= ResolveUrl("Default.aspx/SP_Update_Production_Plan_Operator_TV") %>",
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        data: JSON.stringify({ trans_id: trans_id, B: B, PB: PB, P2: P2, PC_B: PC_B, R: R, S: S, PS: PS, PC_S: PC_S }),
                                        success: function (response) {
                                            var return_trans_ID = response.d;
                                            //alert(trans_ID);
                                            SendMessage_Confirm(Role, return_trans_ID);
                                        }
                                    });
                                }
                            }
                        })
                }
                //Operator
                else if (Role == "Technician") {
                    swal({
                        title: 'Confirm',
                        text: "กรุณาตรวจสอบความถูกต้องของข้อมูล",
                        icon: 'info',
                        buttons: {
                            cancel: true,
                            confirm: true,
                        },
                    }).then(function (confirm) {
                        if (confirm) {
                            $(".input_Cycle").each(function () {
                                let ID = $(this).attr("data-id");
                                let main_machine_ID = $(this).attr("data-main_machine_ID");
                                let cycle = $(this).val();
                                $.ajax({
                                    type: "post",
                                    async: false,
                                    url: "<%= ResolveUrl("Default.aspx/SP_Update_TimeKeeper_Production_Data_TV") %>",
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        data: JSON.stringify({ ID: ID, trans_id: trans_id, main_machine_ID: main_machine_ID, cycle: cycle }),
                                        success: function (response) {
                                        }
                                    });
                                });
                                SendMessage_Confirm(Role, trans_id);
                            }
                        })
                }



            });


            function SendMessage_Confirm(Role, trans_ID) {
                liff.init({
                    liffId: myLiffId
                }).then(() => {
                    liff.sendMessages([{
                        'type': 'text',
                        'text': Role + ' : แจ้งยอดการผลิต : ' + trans_ID
                    }]).then(function () {
                        liff.closeWindow();
                    }).catch(function (error) {
                        window.alert('Error sending message: ' + error);
                    });
                }).catch((err) => {
                    window.alert('Error ' + err);
                });
            }


            function SP_GET_Production_Data_Count(userId, trans_id) {
                let fragment_B = '';
                let fragment_S = '';
                $("#div_Cycle_B").empty();
                $("#div_Cycle_S").empty();
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/SP_GET_Production_Data_Count") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ userId: userId, trans_id: trans_id }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                var main_machine_ID = val[0];
                                var size = val[1];
                                var id = val[2];
                                var Table_Cycle_ID = val[3] == "" ? 0 : val[3];
                                var main_machine_number = val[4];
                                if (size == "B") {
                                    fragment_B += ` <div class="row">
                                                <div class="col-xs-12 col-md-12  bg-sky-blue">
                                                    <div class="row">
                                                        <div class="col-md-6 col-xs-6 ">
                                                            <div class="row">
                                                                <div class="col-md-12 no-padding">
                                                                    <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 15px; font-weight: bold;">`+ main_machine_number + `</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 col-xs-6 ">
                                                            <div class="row" style="margin-top: 5px;">
                                                                <div class="col-xs-2 col-md-2">
                                                                    <button class="btn btn-warning btn-circle btn-sm btnback btnCycle_B" data-type="" type="button">-</button>
                                                                </div>
                                                                <div class="col-xs-6 col-md-6">
                                                                    <input type="number" class="form-control max-wide inpu-number no-padding center input_Cycle checkCycle_B" style="font-size: 18px;" data-id="`+ Table_Cycle_ID + `" data-main_machine_ID="` + main_machine_ID + `"  id="text_` + main_machine_ID + `" value="0">
                                                                </div>
                                                                <div class="col-xs-2 col-md-2">
                                                                    <button class="btn btn-warning btn-circle btn-sm btnnext btnCycle_B" data-type="" type="button">+</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>`;
                                }
                                else if (size == "S") {
                                    fragment_S += ` <div class="row">
                                                <div class="col-xs-12 col-md-12  bg-white-pink">
                                                    <div class="row">
                                                        <div class="col-md-6 col-xs-6 ">
                                                            <div class="row">
                                                                <div class="col-md-12 no-padding">
                                                                    <label class="title-text text-white input-number no-padding" style="position: inherit; font-size: 15px; font-weight: bold;">`+ main_machine_number + `</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 col-xs-6 ">
                                                            <div class="row" style="margin-top: 5px;">
                                                                <div class="col-xs-2 col-md-2">
                                                                    <button class="btn btn-warning btn-circle btn-sm btnback btnCycle_S" data-type="" type="button">-</button>
                                                                </div>
                                                                <div class="col-xs-6 col-md-6">
                                                                    <input type="number" class="form-control max-wide inpu-number no-padding center input_Cycle checkCycle_S" style="font-size: 18px;" data-id="`+ Table_Cycle_ID + `"  data-main_machine_ID="` + main_machine_ID + `" id="text_` + main_machine_ID + `" value="0">
                                                                </div>
                                                                <div class="col-xs-2 col-md-2">
                                                                    <button class="btn btn-warning btn-circle btn-sm btnnext btnCycle_S" data-type="" type="button">+</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>`;
                                }

                            });
                            $("#div_Cycle_B").append(fragment_B);
                            $("#div_Cycle_S").append(fragment_S);
                        }
                    }
                });
            }

            function SP_GET_Production_Data(userId, trans_id, step) {
                if (step == 2) {
                    $.ajax({
                        type: "post",
                        async: false,
                        url: "<%= ResolveUrl("Default.aspx/SP_GET_Production_Data") %>",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data: JSON.stringify({ userId: userId, trans_id: trans_id, step: step }),
                        success: function (response) {
                            if (response.d.length > 0) {
                                $.each(response.d, function (index, val) {
                                    var main_machine_ID = val[0];
                                    var Cycle = val[1];
                                    var Cycle_B = val[2];
                                    var Cycle_S = val[3];
                                    var TOU = val[4];
                                    var linetoken = val[5];
                                    var B = val[6];
                                    var PB = val[7];
                                    var P2 = val[8];
                                    var PC_B = val[9];
                                    var R = val[10];
                                    var S = val[11];
                                    var PS = val[12];
                                    var PC_S = val[13];
                                    var main_machine_number = val[14];
                                    let id = 'text_' + main_machine_ID;
                                    $("#" + id).val(Cycle);
                                    $("#text_Cycle_B").text(Cycle_B);
                                    $("#text_Cycle_S").text(Cycle_S);
                                    $("#text_B").val(B);
                                    $("#text_PB").val(PB);
                                    $("#text_P2").val(P2);
                                    $("#text_PC_B").val(PC_B);
                                    $("#text_R").val(R);
                                    $("#text_S").val(S);
                                    $("#text_PS").val(PS);
                                    $("#text_PC_S").val(PC_S);
                                    if (TOU != 0) {
                                        $(".TOU").show();
                                        let sum_x = "<br>";
                                         sum_x += "จำนวนรอบการผลิต " + main_machine_number + " เกินเวลา TOU";
                                        $("#text_TOU").append(sum_x);
                                    }
                                });
                            }
                        }
                    });
                }
            }

            function SP_GET_Production_DATA_TV(userId, trans_id, text) {
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/SP_GET_Production_DATA_TV") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ userId: userId, trans_id: trans_id, text: text }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                var B = val[0];
                                var PB = val[1];
                                var P2 = val[2];
                                var PC_B = val[3];
                                var R = val[4];
                                var S = val[5];
                                var PS = val[6];
                                var PC_S = val[7];
                                $("#text_B").val(B);
                                $("#text_PB").val(PB);
                                $("#text_P2").val(P2);
                                $("#text_PC_B").val(PC_B);
                                $("#text_R").val(R);
                                $("#text_S").val(S);
                                $("#text_PS").val(PS);
                                $("#text_PC_S").val(PC_S);
                            });
                        }
                    }
                });

            }

            function SP_GET_Production_Check_TV(userId, Role) {
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/SP_GET_Production_Check_TV") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ userId: userId, Role: Role }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                var trans_id = val[0];
                                var B = val[1];
                                var PB = val[2];
                                var P2 = val[3];
                                var PC_B = val[4];
                                var R = val[5];
                                var S = val[6];
                                var PS = val[7];
                                var PC_S = val[8];
                                var statusPlan = val[9];
                                if (Role == "Operator") {
                                    if (statusPlan == "" || statusPlan == "new") {
                                        $('#btnSubmit').prop("disabled", false);
                                        $('.btnnext').prop("disabled", false);
                                        $('.btnback').prop("disabled", false);
                                        $('form').find(':input[type="number"]').prop('disabled', false);
                                    } else {
                                        $('#btnSubmit').prop("disabled", true);
                                        $('.btnnext').prop("disabled", true);
                                        $('.btnback').prop("disabled", true);
                                        $('form').find(':input[type="number"]').prop('disabled', true);
                                    }

                                }
                                else if (Role == "Technician")
                                    if (statusPlan == "await") {
                                        $('#btnSubmit').prop("disabled", false);
                                    } else {
                                        $('#btnSubmit').prop("disabled", true);
                                        $('.btnnext').prop("disabled", true);
                                        $('.btnback').prop("disabled", true);
                                        $('form').find(':input[type="number"]').prop('disabled', true);

                                    }

                            });
                        }
                    }
                });
            }


        });
    </script>
</asp:Content>
