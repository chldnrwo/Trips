<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="./lib/jquery-3.5.1.js"></script>

<c:set var="path" value="${pageContext.request.contextPath}" />
<script src="http://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>


<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<style>
#att_zone {
	width: 660px;
	min-height: 150px;
	padding: 10px;
	border: 1px dotted #00f;
}

#att_zone:empty:before {
	content: attr(data-placeholder);
	color: #999;
	font-size: .9em;
}
@font-face {
    font-family: 'NanumSquareNeo-Variable';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
} 
body {
 font-family: 'NanumSquareNeo-Variable','Palatino Linotype' !important; 
}
</style>
</head>
<body>
	<my:navbar></my:navbar>







<div class="container" align="center"style="margin-right:;">
		<div class="row">
			<div class="col">


				<form id="registerForm1" action="" method="post"
					enctype="multipart/form-data">

					<br> <br>

					<div class="mb-3" id='image_preview'>
						<label for="" class="form-label"><b>* ????????? ?????? ??? ????????? ??? ?????? ????????????
							???????????????</b> </label> 
							<br><input id="btnAtt" multiple type="file" accept="image/*"
							name="files"> <br><br>
						<div id='att_zone'
							data-placeholder='????????? ?????? ????????? ?????? ?????? ????????? ??????????????? ????????? ?????????????????? ?????????.(????????? ?????? 4???)'></div>
						<!-- 					<input type="file" onchange="readURL(this);">  -->
						<!-- 						<img id="preview" style="width: 300px; height: 300px;" /> -->

					</div>

					<!-- 					<div id='image_preview'> -->
					<!-- 						<h3>????????? ???????????? [ IT????????? ]</h3> -->
					<!-- 						<input type='file' id='btnAtt' multiple='multiple' /> -->
					<!-- 						<div id='att_zone' -->
					<!-- 							data-placeholder='????????? ?????? ????????? ?????? ?????? ????????? ??????????????? ????????? ?????????????????? ?????????'></div> -->
					<!-- 					</div> -->

				<br> <br><b> * ????????? ????????? ????????? ?????????????????? </b> <br><br>  <input type="text"
						id="ttt1" value="?????? ????????????" name="date"> <br> <br>
						<br><input id="submitButton1" class="btn btn-dark" type="submit"
						value="?????? ??????">




				</form>
			</div>
		</div>
	</div>
	</div>
	
	
	
	
	<script>

( /* att_zone : ??????????????? ????????? ?????? id, btn : file tag id */
  imageView = function imageView(att_zone, btn){

    var attZone = document.getElementById(att_zone);
    var btnAtt = document.getElementById(btn)
    var sel_files = [];
    
    // ???????????? ?????? ????????? ????????? ?????? div ??????
    var div_style = 'display:inline-block;position:relative;'
                  + 'width:150px;height:120px;margin:5px;border:1px solid #00f;z-index:1';
    // ???????????? ????????? ??????
    var img_style = 'width:100%;height:100%;z-index:none';
    // ??????????????? ???????????? ??????????????? ??????
    var chk_style = 'width:30px;height:30px;position:absolute;font-size:24px;'
                  + 'right:0px;bottom:0px;z-index:999;background-color:rgba(255,255,255,0.1);color:#f00';
  
    btnAtt.onchange = function(e){
      var files = e.target.files;
      var fileArr = Array.prototype.slice.call(files)
      for(f of fileArr){
        imageLoader(f);
      }
    }  
    
  
    // ??????????????? ???????????? ?????? ??????
    attZone.addEventListener('dragenter', function(e){
      e.preventDefault();
      e.stopPropagation();
    }, false)
    
    attZone.addEventListener('dragover', function(e){
      e.preventDefault();
      e.stopPropagation();
      
    }, false)
  
    attZone.addEventListener('drop', function(e){
      var files = {};
      e.preventDefault();
      e.stopPropagation();
      var dt = e.dataTransfer;
      files = dt.files;
      for(f of files){
        imageLoader(f);
      }
      
    }, false)
    

    
    /*????????? ??????????????? ????????? ?????? ???????????? */
    imageLoader = function(file){
      sel_files.push(file);
      var reader = new FileReader();
      reader.onload = function(ee){
        let img = document.createElement('img')
        img.setAttribute('style', img_style)
        img.src = ee.target.result;
        attZone.appendChild(makeDiv(img, file));
      }
      
      reader.readAsDataURL(file);
    }
    
    /*????????? ????????? ?????? ?????? checkbox??? ?????? attZone??? ????????? div??? ????????? ?????? */
    makeDiv = function(img, file){
      var div = document.createElement('div')
      div.setAttribute('style', div_style)
      
      var btn = document.createElement('input')
      btn.setAttribute('type', 'button')
      btn.setAttribute('value', 'x')
      btn.setAttribute('delFile', file.name);
      btn.setAttribute('style', chk_style);
      btn.onclick = function(ev){
        var ele = ev.srcElement;
        var delFile = ele.getAttribute('delFile');
        for(var i=0 ;i<sel_files.length; i++){
          if(delFile== sel_files[i].name){
            sel_files.splice(i, 1);      
          }
        }
        
        dt = new DataTransfer();
        for(f in sel_files) {
          var file = sel_files[f];
          dt.items.add(file);
        }
        btnAtt.files = dt.files;
        var p = ele.parentNode;
        attZone.removeChild(p)
      }
      div.appendChild(img)
      div.appendChild(btn)
      return div
    }
  }
)('att_zone', 'btnAtt')
		 //mdp
	    flatpickr("#ttt1",{
	        mode: "multiple",
	        dateFormat: "Y-m-d",
	        disable: [
	            {
	                from: "0000-04-01",
	                to: new Date()
	            }
	        ]
	    });

</script>





	<!-- 	<h1 id="header">jQuery Test??? ?????? ??????</h1> -->
	<%

	// ??????????????? ?????? (scriptlet) : java coding area
	// java -> System.out.println();
	// js -> console.log();, document.write();
	//out.print("hi jQuery...");

	%>




	<!--  ??? ??????????????? ????????? ???????????? ??????????????? ?????? -->
	<!-- ??? ?????? ?????? ?????? ?????? mdp ?????? ??????? -->
	<script>
 
//  $("#imageFile").on("change", function(event) {

// 	    var file = event.target.files[0];
	    

// 	    var reader = new FileReader(); 
// 	    reader.onload = function(e) {


// 	        $("#preview").attr("src", e.target.result);
// 	    }

// 	    reader.readAsDataURL(file);
// 	});
 
 
  $("#imageFile").on("change", function(event) {

	  for (var i = 0; i < files.length; i++) { 
		  
	    var file = event.target.files[i];
	    

	    var reader = new FileReader(); 
	    reader.onload = function(e) {

	        $("#preview"+i).attr("src", e.target.result);
	    }

	    reader.readAsDataURL(file);
	});
 
   }
 
 
// //???????????? ????????? ???????????? ??????
//  function isImageFile(file) {

//      var ext = file.name.split(".").pop().toLowerCase(); // ??????????????? ???????????? ????????????. 

//      return ($.inArray(ext, ["jpg", "jpeg", "gif", "png"]) === -1) ? false : true;
//  }
//  // ????????? ?????? ????????? ??????
//  function isOverSize(file) {

//      var maxSize = 3 * 1024 * 1024; // 3MB??? ?????? 

//      return (file.size > maxSize) ? true : false;
//  }
 
 
 //mdp
    flatpickr("#ttt1",{
        mode: "multiple",
        dateFormat: "Y-m-d",
        disable: [
            {
                from: "0000-04-01",
                to: new Date()
            }
        ]
    });
</script>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
	<script>
$('#header').css('color', '#00f'); //jQuery??????
</script>
</body>
</html>












