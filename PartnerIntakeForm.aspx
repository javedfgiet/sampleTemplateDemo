<%@ Page Title="" Language="C#" MasterPageFile="~/PISite.Master" AutoEventWireup="true" CodeBehind="PartnerIntakeForm.aspx.cs" Inherits="SampleTemplateDemo.PartnerIntakeForm" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>--%>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/Custom.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.12.4.min.js"></script>
    <script src="Scripts/jquery.easing.1.3.js"></script>
    <script src="Scripts/OnBaordingScript.js"></script>
    <script src='Scripts/bootstrap-datepicker.js'></script>
    <script src="Scripts/index.js"></script>
    <script type="text/javascript">
     $(document).ready(function () {
                    $("[id$=Submit]").click(function () {
                        if ($("[id$=intendedCheckBox]").find("input:checked").length > 0) {
                            return true;
                        } else {
                            alert('Please select most suitable intended use from the list.');
                            return false;
                        }
                    });
                });
     $(document).ready(function () {
                    $("[id$=Submit]").click(function () {
                        if ($("[id$=TargetDeviceCheckBoxList]").find("input:checked").length > 0) {
                            return true;
                        } else {
                            alert('Please select Targeted Device from the list.');
                            return false;
                        }
                    });
                });
     $(document).ready(function () {
                    $("[id$=Submit]").click(function () {
                        if ($("[id$=DistributionMethodCheckBoxList]").find("input:checked").length > 0) {
                            return true;
                        } else {
                            alert('Please select distribution method for your product/service/application from the list.');
                            return false;
                        }
                    });
                });
     $(document).ready(function () {
                    $("[id$=Submit]").click(function () {
                        if ($("[id$=CheckBox_DataType]").find("input:checked").length > 0) {
                            return true;
                        } else {
                            alert('Please select Data Types from the list.');
                            return false;
                        }
                    });
                });
 </script>
    <div class="well" style="padding-left: 2%; width: 90%; margin: 2% auto; text-align: left; position: relative; border: 0 none; border-radius: 3px; box-shadow: 0 0 15px 1px rgba(0, 0, 0, 0.4); box-sizing: border-box; background-color: white">
        <div class="panel panel-default" style="background-color: white;color:#097F6F">
            <div class="panel-body">
                <div class="row form-group no-gutter" style="padding-top: 0%">
                    <div class="col-lg-1" style="padding-top: 10px">
                        <asp:Image runat="server" src="Images/bingapilogo.jpg" />
                    </div>
                    <div class="col-lg-11">
                        <h2 style="padding-left: 22%"><b>Partner Onboarding Questionnaire</b></h2>
                    </div>
                </div>
                <div style="text-align:center; padding-bottom: 0%">
                    <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
                </div>
            </div>
        </div>
        
              <fieldset>
                    <div class="row form-group ">
                        <div class="col-lg-4">
                            <asp:Label ID="LabelTeamName" runat="server" Font-Bold="true" Text="Team Name & Organization" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                        </div>
                        <div class="col-lg-8">
                            <asp:TextBox runat="server" ID="TextTeamName" autocomplete="off" class="form-control" Style="width: 100%; padding-left: 5px" ToolTip="please enter your Team Name & Organization (Example:“Bing API team and AI&R) " placeholder="Team Name & Organization"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextTeamName" runat="server" ErrorMessage="*Please enter Team and Organization." ForeColor="red" ControlToValidate="TextTeamName" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>             
                    </div>
                    <div class="row form-group ">
                    <div class="col-lg-4">
                            <asp:Label ID="Contact" runat="server" Font-Bold="true" Text="Partner Contact Alias" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                        </div>
                        <div class="col-lg-8">
                            <asp:TextBox runat="server" ID="ContactTextBox" autocomplete="off" class="form-control" Style="width: 100%; padding-left: 5px" ToolTip="Partner Contact Name." placeholder="Partner Contact Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorContactTextBox" runat="server" ErrorMessage="*Please enter Partner contact Alias." ForeColor="red" ControlToValidate="ContactTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>  
                        </div>

                    

                     <div class="row form-group ">
                        <div class="col-lg-4">
                            <asp:Label ID="TeamContact" Font-Bold="true" runat="server" Text="Team Email Alias" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                        </div>
                        <div class="col-lg-8">
                            <asp:TextBox runat="server" ID="TeamContactTextBox" autocomplete="off" class="form-control" Style="width: 100%; padding-left: 5px" ToolTip="Team Alias Email." placeholder="Team alias"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTeamContactTextBox" runat="server" ErrorMessage="*Please enter Team Contact Alias." ForeColor="red" ControlToValidate="TeamContactTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>             
                    </div>
                    <div class="row form-group ">
                        <div class="col-lg-4">
                            <asp:Label ID="intended" runat="server" Text="What is the most suitable intended use?" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                        </div>
                        <div class="col-lg-8">
                            <asp:CheckBoxList ID="intendedCheckBox" runat="server" Style="color: #5c5c5c; text-align: left; font-weight: bold" CellPadding="2" CellSpacing="2">
                                <asp:ListItem Value=" Internal Microsoft users only.">  Internal Microsoft users only. </asp:ListItem>
                                <asp:ListItem Value=" External third party product users.">   External third party product users.</asp:ListItem>
                                 <asp:ListItem Value="Microsoft product for external users "> Microsoft product for external users.</asp:ListItem>
                            </asp:CheckBoxList>
                          
                        </div>                   
                                      
                    </div>

                    <div class="row form-group">
                        <div class="col-lg-4">
                            <asp:Label ID="ProjectOverView" runat="server" Text="Project Overview" class="control-label" Style="color: #097F6F; font-weight: bold"></asp:Label>
                        </div>
                        <div class="col-lg-8">
                            <asp:TextBox runat="server" ID="ProjectOverViewText" name="Project Overview" autocomplete="off" class="form-control" Style="width: 100%; height: 120px" TextMode="MultiLine" ToolTip="Please enter Project Overview." placeholder="Please enter Project Overview."></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorProjectOverViewText" runat="server" ErrorMessage="*Please mention project overview." ForeColor="red" ControlToValidate="ProjectOverViewText" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>


                     <div class="row form-group">
                        <div class="col-lg-4">
                            <asp:Label ID="TargetDeviceLabel" runat="server" Text="Target Device" class="control-label" Style="color: #097F6F; font-weight: bold"></asp:Label>
                        </div>
                        <div class="col-lg-8">
                             <asp:CheckBoxList ID="TargetDeviceCheckBoxList" runat="server" Style="color: #5c5c5c; text-align: left; font-weight: bold">
                                <asp:ListItem Value="Desktop">Desktop</asp:ListItem>
                                <asp:ListItem Value="Mobile">Mobile</asp:ListItem>
                                <asp:ListItem Value="Others">Others</asp:ListItem>
                            </asp:CheckBoxList>
                           
                            <asp:Label ID="TargetDeviceLabelothers" runat="server" Text="If Other, please specify" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold" Visible="True"></asp:Label>
                            <asp:TextBox runat="server" ID="TargetDeviceOthers" autocomplete="off" class="form-control" Style="width: 100%; padding-left: 5px" ToolTip="please specify" placeholder="Please specify" Visible="True"></asp:TextBox>
                        </div>
                    </div>

                    <!--<div class="row form-group ">
                        <div class="col-lg-4">
                            <asp:Label ID="ProjectWebsite" runat="server" Text="Project Website" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                        </div>
                        <div class="col-lg-8">
                            <asp:TextBox runat="server" ID="ProjectWebsiteText" autocomplete="off" class="form-control" Style="width: 100%; padding-left: 5px" ToolTip="Project Website" placeholder="Project Website"></asp:TextBox>
                        </div>              
                    </div>-->
                    <div class="row form-group ">
                        <div class="col-lg-4">
                            <asp:Label ID="ProjectReleaseDates" runat="server" Text="Project Release Dates" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                        </div>
                        <div class="col-lg-8">
                          <div id="datepicker" class="input-group date" data-date-format="mm-dd-yyyy">
                           <!-- <input class="form-control custom-input" type="text" runat="server" id="calendar" style="width:100%;"/>-->
                              <asp:TextBox runat="server" ID="CalendarText" name="CalendarText" autocomplete="off" class="form-control" Style="width: 100%;"></asp:TextBox>
                            <span class="input-group-addon  bg-white" ><img src="images/wall-calendar-with-lines.svg" height="20" width="20"></span>
                          </div>
                          
                        </div>               
                    </div>
                   <div class="row form-group ">
                        <div class="col-lg-4">
                            <asp:Label ID="Label1" runat="server" Text="Till when you need App id (Any last date)" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                        </div>
                        <div class="col-lg-8">
                          <div id="datepicker1" class="input-group date" data-date-format="mm-dd-yyyy">
                           <!-- <input class="form-control custom-input" type="text" runat="server" id="calendar" style="width:100%;"/>-->
                              <asp:TextBox runat="server" ID="TextBox1" name="CalendarText" autocomplete="off" class="form-control" Style="width: 100%;"></asp:TextBox>
                            <span class="input-group-addon  bg-white" ><img src="images/wall-calendar-with-lines.svg" height="20" width="20"></span>
                          </div>
                          
                        </div>               
                    </div>
                    <div class="row form-group ">
                        <div class="col-lg-4">
                            <asp:Label ID="DistributionMethod" runat="server" Text="What is the distribution method for your product/service/application" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                        </div>
                        <div class="col-lg-8">
                            <asp:CheckBoxList ID="DistributionMethodCheckBoxList" runat="server" Style="color: #5c5c5c; text-align: left; font-weight: bold;">
                                
                                <asp:ListItem Value="3rd Party">Microsoft internal use only</asp:ListItem>
                                <asp:ListItem Value="Public distribution of libraries through GitHub or similar">Public distribution of libraries through GitHub or similar</asp:ListItem>
                               
                            </asp:CheckBoxList>
                        </div>             
                                      
                    </div>
                    <div class="row form-group ">
                        
                        <div class="col-lg-4">
                            <asp:Label ID="MarketList" runat="server" Text="Pls list top 5 markets/countries where your application will show results" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                        </div>
                        <div class="col-lg-8">
                            <asp:TextBox runat="server" ID="MarketListText" autocomplete="off" class="form-control" Style="width: 100%; padding-left: 5px" ToolTip="Pls list top 5 markets/countries where your application will show results" placeholder="Pls list top 5 markets/countries where your application will show results"></asp:TextBox>
                        </div>               
                    </div>

                    <div class="row form-group ">
                        <div class="col-lg-4">
                            <asp:Label ID="QPM" runat="server" Text="Estimated number of queries per month" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                        </div>
                        <div class="col-lg-8">
                            <asp:TextBox runat="server" ID="QPMText" autocomplete="off" class="form-control" Style="width: 100%; padding-left: 5px" ToolTip="Estimated number of queries per month" placeholder="Estimated number of queries per month"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorQPMText" runat="server" ErrorMessage="*Please mention query per month." ForeColor="red" ControlToValidate="QPMText" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                          
                    </div>

                <div class="row form-group">
                     <div class="col-lg-4">
                            <asp:Label ID="POCContact" runat="server" Text="Projected monthly query volume" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                        </div>
                        <div class="col-lg-8">
                            <asp:TextBox runat="server" ID="POCContactText" autocomplete="off" class="form-control" Style="width: 100%; padding-left: 5px" ToolTip="Projected monthly query volume" placeholder="Projected monthly query volume"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPOCContactText" runat="server" ErrorMessage="*Please enter Projected monthly query volume." ForeColor="red" ControlToValidate="POCContactText" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div> 
                        </div>
                    <div class="row form-group ">
                       <div class="col-lg-4">
                            <asp:Label ID="QPS" runat="server" Text="Pls Provide max QPS your APPID will need " class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                        </div>
                        <div class="col-lg-8">
                            <asp:TextBox runat="server" ID="QPSText" autocomplete="off" class="form-control" Style="width: 100%; padding-left: 5px" ToolTip="Pls Provide max QPS your APPID will need ." placeholder="Pls Provide max QPS your APPID will need ."></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidatorQPSText" runat="server" ErrorMessage="*Please mention query per second." ForeColor="red" ControlToValidate="QPSText" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>               
                    </div>
                 
                    <div class="row form-group ">
                       <div class="col-lg-4">
                            <asp:Label ID="ImplementationAdheres" runat="server" Text="Please ensure your implementation adheres to the" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                           <asp:HyperLink runat="server" ID="guidline" Target="_blank" NavigateUrl="https://docs.microsoft.com/en-us/azure/cognitive-services/bing-web-search/useanddisplayrequirements">Use and display requirements.</asp:HyperLink>
                        </div>
                        <div class="col-lg-8">
                            <asp:RadioButtonList ID="ImplementationAdheresRadio" runat="server"  RepeatDirection="Vertical" CssClass="fs-subtitle" class="control-label" Style="color: #5c5c5c; text-align: left; font-weight: bold">
                                        <asp:ListItem Text="I Accept:" Value="I Accept" ></asp:ListItem>
                                        <asp:ListItem Text="I Decline:" Value="I Decline" ></asp:ListItem>
                                </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorImplementationAdheresRadio" runat="server" ErrorMessage="*Please select an option." ForeColor="red" ControlToValidate="ImplementationAdheresRadio" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>               
                    </div>
                  
                    <div class="row form-group ">
                       <div class="col-lg-4">
                            <asp:Label ID="Label_IssueType" runat="server" Text="What Data Types are being considered for use?" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                        </div>
                        <div class="col-lg-8">

                             <asp:CheckBoxList ID="CheckBox_DataType" runat="server" Style="color: #5c5c5c; text-align: left; font-weight: bold" RepeatColumns="2">
                                <asp:ListItem Value="Web">Web</asp:ListItem>
                                <asp:ListItem Value="Video"> Video</asp:ListItem>
                                <asp:ListItem Value="Images">Images</asp:ListItem>
                                 <asp:ListItem Value="News">News</asp:ListItem>
                                <asp:ListItem Value="Related Queries">Related Queries</asp:ListItem>
                                <asp:ListItem Value="Spelling Suggestions for query terms ">Spelling Suggestions for query terms </asp:ListItem>
                                <asp:ListItem Value="Ads">Ads</asp:ListItem>
                                 <asp:ListItem Value="Other (Autosuggest, Local, etc)">Other (Autosuggest, Local, etc)</asp:ListItem>
                            </asp:CheckBoxList>
                             
                            <asp:Label ID="Issue_type_others" runat="server" Text="If Other, please specify" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold" Visible="True"></asp:Label>
                            <asp:TextBox runat="server" ID="Issue_type_othersText" autocomplete="off" class="form-control" Style="width: 100%; padding-left: 5px" ToolTip="please specify" placeholder="Please specify" Visible="True"></asp:TextBox>
                          
                        </div>               
                    </div>           
          
                    <div class="row form-group ">
                    <div class="col-lg-4">
                            <asp:Label ID="FormCodeVerification" runat="server" Text="Do you have an AppId and/or FORMCode?" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                        </div>
                        <div class="col-lg-8">
                            <asp:RadioButtonList ID="FormCodeVerificationRadioButton" runat="server"  RepeatDirection="Vertical" CssClass="fs-subtitle" class="control-label" Style="color: #5c5c5c; text-align: left; font-weight: bold">
                                        <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                        <asp:ListItem Text="No" Value="No" ></asp:ListItem>
                                </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorFormCodeVerificationRadioButton" runat="server" ErrorMessage="*Please select an option." ForeColor="red" ControlToValidate="FormCodeVerificationRadioButton" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:Label ID="FormCode" runat="server" Text="If Yes, then please mention it" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                            <asp:TextBox runat="server" ID="FormCodeText" autocomplete="off" class="form-control" Style="width: 100%; padding-left: 5px" ToolTip="Mention" placeholder="Mention the FormCode/AppID"></asp:TextBox>
                        </div>   
                        </div>
                   
                    <div class="row form-group">
                     <div class="col-lg-4">
                            <asp:Label ID="BingService" runat="server" Text="Where will the Bing APIs be called from?" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                        </div>
                        <div class="col-lg-8">
                            <asp:RadioButtonList ID="BingServiceRadio" runat="server"  RepeatDirection="Vertical" CssClass="fs-subtitle" class="control-label" Style="margin-right:15px;color: #5c5c5c; text-align: left; font-weight: bold">
                                        <asp:ListItem Text=" Server Side (Preferred):" Value=" Server Side"></asp:ListItem>
                                        <asp:ListItem Text=" Client Side:" Value=" Client Side" ></asp:ListItem>
                                        <asp:ListItem Text=" Others:" Value=" Others"></asp:ListItem>
                                </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorBingServiceRadio" runat="server" ErrorMessage="*Please select an option." ForeColor="red" ControlToValidate="BingServiceRadio" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:Label ID="Mention" runat="server" Text="If others, then please mention it" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                            <asp:TextBox runat="server" ID="TextMention" autocomplete="off" class="form-control" Style="width: 100%; padding-left: 5px" ToolTip="Mention" placeholder="Mention the other source from where APIs will be called"></asp:TextBox>

                        </div> 
                        </div>
                   
                    <div class="row form-group ">
                        <div class="col-lg-4">
                            <asp:Label ID="ScenarioLabel" runat="server" Text="Pls mention your top 2 product scenarios" class="control-label" Style="color: #097F6F; text-align: left; font-weight: bold"></asp:Label>
                        </div>
                        <div class="col-lg-8">
                            <asp:TextBox runat="server" ID="ScenarioLabelText" name="Scenarios" autocomplete="off" class="form-control" Style="width: 100%; height: 120px" TextMode="MultiLine" ToolTip="Scenarios." placeholder="Scenarios."></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorScenarioLabelText" runat="server" ErrorMessage="*Please mention scenarios." ForeColor="red" ControlToValidate="ScenarioLabelText" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                                      
                    </div>
                  <div class="row form-group">
                        <div class="col-lg-2">
                        </div>
                        <div class="col-lg-8">
                            <asp:Label ID="Label_Attachment" runat="server" Text="Attachment" class="control-label" Style="color: #097F6F; float: left; font-weight: bold;padding-left:170px"></asp:Label>
                            <asp:ImageButton ID="ImageButton" runat="Server" ImageUrl="~/Images/Attach.ico" Style="height: 20px; padding-left: 10px; float: left" ToolTip="Add attachment if you have any." CausesValidation="False" />
                        </div>
                    </div>
           <asp:Button ID="Submit" class="btn" Style="background-color: #097F6F; color: white; float: inherit; width: 20%;" type="submit" value="Submit" runat="server" Text="Submit" OnClientClick="DisableButtons" OnClick="Submit_Click" />               
                <div class="row form-group">
                        <div class="Label" style="padding-top: 5px; text-align: center">
                            <asp:Label ID="Label_Message" runat="server" ForeColor="red"></asp:Label>
                            <asp:Label ID="Labelhelp" runat="server" Text="For any help or query please contact SPS (spbsupp@microsoft.com)" Style="color: #097F6F; text-align: center; font-weight: bold;font-size:smaller"></asp:Label>
                        </div>
                    </div>
                    <div class="col-lg-8">
                            <asp:Textbox runat="server" ID="TextHidden" autocomplete="off" class="form-control" Style="width: 100%; padding-left: 5px" ToolTip="Project Release Dates" placeholder="Project Release Dates" Visible="false"></asp:Textbox>
                        
                        </div>
                    </fieldset>  
       <div runat="server" id="heading" align=center style=text-align:center;background-color:#097F6F; visible="false">Partner Intake Form</div>
        
           </div>    

    <asp:Panel Title="File" ID="Panl1" runat="server" CssClass="Popup" align="center" Width="45%" Style="display: none">
        <h4 style="align-content: center; color: #097F6F">Attach File</h4>
        <hr />
        <iframe style="width: 90%; height: 40%;" id="irm1" src="UploadFIles.aspx?id=1" runat="server"></iframe>
        <br />
        <asp:Button ID="Button2" Style="background-color: #097F6F; color: white; width: 25%;" runat="server" Text="Close" CausesValidation="False" />
    </asp:Panel>
    <hr />
    <footer style="padding-bottom: 0px">
        <div style="text-align: center;">
            <p><b>&copy;-Search Partner Support</b></p>
        </div>
    </footer>

</asp:Content>


