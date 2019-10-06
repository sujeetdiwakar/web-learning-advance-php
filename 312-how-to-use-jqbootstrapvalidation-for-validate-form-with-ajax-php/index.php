<!DOCTYPE html>
<html>
 <head>
  <title>Contact Form Validation using jqBootstrapValidation with Ajax PHP</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jqBootstrapValidation/1.3.6/jqBootstrapValidation.js"></script>
  <style>
  .box
  {
   max-width:600px;
   width:100%;
   margin: 0 auto;;
  }
        .form-group p
        {
            color:#a94442;
        }
  </style>
 </head>
 <body>
  <div class="container">
   <br />
   <h3 align="center">Contact Form Validation using jqBootstrapValidation with Ajax PHP</h3>
   <br />
   <form id="simple_form" novalidate="novalidate">

    <div class="control-group">
                    <div class="form-group mb-0 pb-2">
                        <input type="text" name="contact_name" id="contact_name" class="form-control form-control-lg" placeholder="Name" required="required" data-validation-required-message="Please enter your name." />
                        <p class="text-danger help-block"></p>
                    </div>
                </div>

                <div class="control-group">
                    <div class="form-group">
                        <input type="email" name="contact_email" id="contact_email" class="form-control form-control-lg" placeholder="Email Address" required="required" data-validation-required-message="Please enter your email address." />
                        <p class="text-danger help-block"></p>

                    </div>
                </div>

                <div class="control-group">
                    <div class="form-group">
                        <input type="tel" name="contact_mobile" id="contact_mobile" class="form-control form-control-lg" placeholder="Phone Number" required="required" data-validation-required-message="Please enter your phone number." pattern="^[0-9]{10}$" data-validation-pattern-message="10 digits needed" />
                        <p class="text-danger help-block"></p>

                    </div>
                </div>

                <div class="control-group">
                    <div class="form-group">
                        <textarea name="contact_message" id="contact_message" class="form-control form-control-lg" rows="5" placeholder="Message" required="required" data-validation-required-message="Please enter a message."></textarea>
                        <p class="text-danger help-block"></p>
                    </div>
                </div>
                <br>
                <div id="success"></div>
                <div class="form-group">
                 <button type="submit" class="btn btn-primary" id="send_button">Send</button>
                </div>
   </form>
  </div>
 </body>
</html>

<script>
$(document).ready(function(){
 
    $('#simple_form input, #simple_form textarea').jqBootstrapValidation({
     preventSubmit: true,
     submitSuccess: function($form, event){     
      event.preventDefault();
      $this = $('#send_button');
      $this.prop('disabled', true);
      var form_data = $("#simple_form").serialize();
      $.ajax({
       url:"send.php",
       method:"POST",
       data:form_data,
       success:function(){
        $('#success').html("<div class='alert alert-success'><strong>Your message has been sent. </strong></div>");
        $('#simple_form').trigger('reset');
       },
       error:function(){
        $('#success').html("<div class='alert alert-danger'>There is some error</div>");
        $('#simple_form').trigger('reset');
       },
       complete:function(){
        setTimeout(function(){
         $this.prop("disabled", false);
         $('#success').html('');
        }, 5000);
       }
      });
     },
    });

});
</script>


