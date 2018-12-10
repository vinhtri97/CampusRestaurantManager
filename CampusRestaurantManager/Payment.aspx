<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="CampusRestaurantManager.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Payment.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="container-fluid">
        <header>
            <div class="limiter">
            </div>
        </header>
        <div class="creditCardForm">
            <div class="heading">
                <h1>Confirm Purchase</h1>
            </div>
            <div class="payment">
                    <div class="form-group owner">
                        <label for="owner">
                        Owner</label>
                        <input id="owner" class="form-control" type="text" />
                    </div>
                    <div class="form-group CVV">
                        <label for="cvv">
                        CVV </label>
                        <input id="cvv" class="form-control" type="text" />
                    </div>
                    <div id="card-number-field" class="form-group">
                        <label for="cardNumber">
                        Card Number</label>
                        <input id="cardNumber" class="form-control" type="text" />
                    </div>
                    <div id="expiration-date" class="form-group">
                        <label>Expiration Date</label>
                        <select>
                            <option value="01">January</option>
                            <option value="02">February</option>
                            <option value="03">March</option>
                            <option value="04">April</option>
                            <option value="05">May</option>
                            <option value="06">June</option>
                            <option value="07">July</option>
                            <option value="08">August</option>
                            <option value="09">September</option>
                            <option value="10">October</option>
                            <option value="11">November</option>
                            <option value="12">December</option>
                        </select>
                        <select>
                            <option value="16">2016</option>
                            <option value="17">2017</option>
                            <option value="18">2018</option>
                            <option value="19">2019</option>
                            <option value="20">2020</option>
                            <option value="21">2021</option>
                        </select>
                    </div>
                    <div id="credit_cards" class="form-group">
                        &nbsp;&nbsp;
                        <img alt="" class="auto-style1" src="Payment/amex.jpg" /><img alt="" class="auto-style2" src="Payment/mastercard.jpg" /><img alt="" class="auto-style3" src="Payment/visa.jpg" /></div>
                    <div id="pay-now" class="form-group">
                        <asp:Button runat="server" id="confirm_purchase" Text="Confirm" OnClick="confirm_purchase_Click" class="btn btn-default" type="submit">
                        </asp:Button>
                    </div>
            </div>
        </div>
        <p class="examples-note">
            Here are some dummy credit card numbers and CVV codes so you can test out the form:</p>
        <div class="examples">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Type</th>
                            <th>Card Number</th>
                            <th>Security Code</th>
                        </tr>
                    </thead>
                    <tr>
                        <td class="auto-style4">Visa</td>
                        <td class="auto-style4">4716108999716531</td>
                        <td class="auto-style4">257</td>
                    </tr>
                    <tr>
                        <td>Master Card</td>
                        <td>5281037048916168</td>
                        <td>043</td>
                    </tr>
                    <tr>
                        <td>American Express</td>
                        <td>342498818630298</td>
                        <td>3156</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
