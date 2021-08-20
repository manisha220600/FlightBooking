  <script>
      
        var modal=document.getElementById("signInModal");
        var btn=document.getElementById("signIn");
        var span=document.getElementsByClassName("close")[0];

        btn.onclick=function(){
            modal.style.display="block";
        }
        span.onclick=function(){
            modal.style.display="none";
        }
       
        var modal1=document.getElementById("signupModal");
        var btn1=document.getElementById("signUp");
        var span1=document.getElementsByClassName("close")[1];
        btn1.onclick=function(){
            modal1.style.display="block";

        }
        span1.onclick=function(){
            modal1.style.display="none";
        }
        window.onclick=function(event){
            if(event.target==modal1){
                modal1.style.display="none";
            }
            else  if(event.target==modal){
                modal.style.display="none";
            }
        }

        window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}

    </script>
     