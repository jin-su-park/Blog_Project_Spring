<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp" %>
<style>
header.masthead {
	display: none;
	
}
.intro-table {
	background-color:#FFFFFF;
	width: 100%;
	border: 2px solid #00008B;
}
.intro-tr {
	width: 100%;
	border: .8px solid gray;	
}
td > span {
	padding: 1px 3px;
}
</style>

<!-- 선수단 소개 페이지 -->
<!-- Member Grid -->
<div class="container">

  <section class="bg-light" id="portfolio" style="padding-top: 90px; padding-bottom: 0;">
    <div>
    <h4 style="color:#00008B">토트넘 선수단 소개</h4>
    </div>
    <div class="container">
    
      <div class="row">
      <div class="col-md-4 col-sm-6 portfolio-item">
       <strong>감독</strong>
          <a class="portfolio-link" data-toggle="modal" href="#AntonioConte">
            <div class="portfolio-hover">
                <div class="portfolio-hover-content">
              </div>
            </div>
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/antonioconte_dr.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>콘테</h4>
          </div>
      </div>
      <br/><br/>
      </div>
	  <div class="row">
	  <div class="col-md-4 col-sm-6 portfolio-item">
	  <strong>선수</strong>
	  </div>
	  </div>
      <div class="row">
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#HugoLloris">
            <div class="portfolio-hover">
                <div class="portfolio-hover-content">
              </div>
            </div>
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/hugolloris_1_gk.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>위고 요리스</h4>
            <p class="text-muted">No.1.GK</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#MattDoherty"> 
                       
           <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
           <</div>
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/matt-doherty_2_sb.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>맷 도허티</h4>
            <p class="text-muted">NO.2.DF</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#SergioReguilon">   
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>         
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/sergioreguilon_3_sb.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>세르히오 레길론</h4>
            <p class="text-muted">NO.3.DF</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#CristianrRmero">  
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>          
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/cristianromero_4_sb.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>크리스티안 로메로</h4>
            <p class="text-muted">NO.4.DF</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#PierreemileHojbjerg"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/pierreemilehojbjerg_5_md.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>피에르 호이비에르</h4>
            <p class="text-muted">NO.5.MD</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#DavinsonSanchez">     
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>      
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/davinsonsanchez_6_sb.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>다빈손 산체스</h4>
            <p class="text-muted">NO.6.DF</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#HeungminSon"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/heungminson_7_fw.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>손흥민</h4>
            <p class="text-muted">NO.7.FW</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#HarryWinks">   
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>         
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/harrywinks_8_md.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>해리 윙크스</h4>
            <p class="text-muted">NO.8.MD</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#HarryKane">
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>            
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/harrykane_10_fw.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>해리 케인</h4>
            <p class="text-muted">NO.10.FW</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#BryangIl">  
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>          
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/bryangil_11_md.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>브리안 힐</h4>
            <p class="text-muted">NO.11.MD</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#EmersonRoyal">
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>            
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/emersonroyal_12_sb.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>에메르송 로얄</h4>
            <p class="text-muted">NO.12.DF</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#JoeRodon"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/joerodon_14_sb.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>조 로던</h4>
            <p class="text-muted">NO.14.DF</p>
          </div>
        </div>
         <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#EricDier"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/ericdier_15_md.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>에릭 다이어</h4>
            <p class="text-muted">NO.15.MD</p>
          </div>
        </div>
         <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#GiovaniLocelso"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/giovanilocelso_18_md.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>지오바니 로셀소</h4>
            <p class="text-muted">NO.18.MD</p>
          </div>
        </div>
         <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#RyanSessegnon"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/ryansessegnon_19_md.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>라이언 세세뇽</h4>
            <p class="text-muted">NO.19.MD</p>
          </div>
        </div>
         <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#DeleAlli"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/delealli_20_md.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>델리알리</h4>
            <p class="text-muted">NO.20.MD</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#PierluigiGollini"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/pierluigigollini_22_gk.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>피에를루이지 골리니</h4>
            <p class="text-muted">NO.22.GK</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#StevenBergwijn"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/stevenbergwijn_23_fw.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>스티븐 베르베인</h4>
            <p class="text-muted">NO.23.FW</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#JaphetTanganga"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/japhettanganga_25_sb.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>자펫 탕강가</h4>
            <p class="text-muted">NO.25.DF</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#LucasMoura"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/lucasmoura_27_md.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>루카스 모라</h4>
            <p class="text-muted">NO.27.MD</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#TanguyNdombele"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/tanguyndombele_28_md.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>탕기 온돔벨레</h4>
            <p class="text-muted">NO.28.MD</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#OliverSkipp"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/oliverskipp_29_md.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>올리버 스킵</h4>
            <p class="text-muted">NO.29.MD</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#BenDavies"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/bendavies_33_sb.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>벤 데이비스</h4>
            <p class="text-muted">NO.33.DF</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#BrandonAustin"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/brandonaustin_40_gk.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>브랜던 오스틴</h4>
            <p class="text-muted">NO.40.GK</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#AlfieWhiteman"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/alfiewhiteman_41_gk.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>알피 화이트먼</h4>
            <p class="text-muted">NO.41.GK</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#HarveydavidWhite"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/harveydavidwhite_42_md.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>하비 데이비드 화이트</h4>
            <p class="text-muted">NO.42.MD</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#NeilJohn"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/neiljohn_43_md.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>나일 존</h4>
            <p class="text-muted">NO.43.MD</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#DanepharrellScarlett"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/danepharrellscarlett_44_fw.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>데인 패럴 스칼렛</h4>
            <p class="text-muted">NO.44.FW</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#MalachiFaganwalcott"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/malachifaganwalcott_46_sb.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>말라키 파간월콧</h4>
            <p class="text-muted">NO.46</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#JackClarke"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/jackclarke_47_fw.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>잭 클락</h4>
            <p class="text-muted">NO.47.FW</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#MaksimPaskotsi"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/maksimpaskotsi_48_sb.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>막심 파스콧시</h4>
            <p class="text-muted">NO.48.DF</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#TobimOmole"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/tobimomole_49_sb.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>토비 오몰레</h4>
            <p class="text-muted">NO.49.DF</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#KallumCesay"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/kallumcesay_50_md.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>칼럼 시세이</h4>
            <p class="text-muted">NO.50.MD</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#MattewCraig"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/mattewcraig_51_md.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>매튜 크레익</h4>
            <p class="text-muted">NO.51.MD</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#MichealCraig"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/michealcraig_52_md.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>마이클 크레익</h4>
            <p class="text-muted">NO.52.MD</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#BrooklynlyonsFoster"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/brooklynlyonsfoster_53_sb.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>브루클린 라이언스 포스터 </h4>
            <p class="text-muted">NO.53.DF</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#RomaineMundle"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/romainemundle_55_md.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>로메인 먼들</h4>
            <p class="text-muted">NO.55.MD</p>
          </div>
        </div>
             <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#JneilBennett"> 
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
              </div>
            </div>           
            <img class="img-thumbnail img-fluid" src="<c:url value='/img/introduce/jneilbennett_56_fw.png'/>" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>제이닐 베넷</h4>
            <p class="text-muted">NO.56.FW</p>
          </div>
        </div>
      </div>
    </div>
  </section>

</div> 
<%@ include file="introduce_modal.jsp" %>

<%@ include file="../include/footer.jsp" %>