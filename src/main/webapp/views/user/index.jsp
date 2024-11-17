<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/common/head.jsp" %>
    <title>Online Entertainment</title>
</head>
<body>
<%@include file="/common/header.jsp" %>
<div class="container-fluid row p-0 m-0">
    <div class="nav nav-pills bg-dark flex-column col-md-2 p-0 sticky-top" style="max-height: 100vh;">
        <li class="nav-item">
            <a class="nav-link text-white rounded-0 ${view=='/main/detailVideo.jsp'?'active':''}"
               href="${root}/video">
                Videos
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-white rounded-0 ${view=='/main/likeVideo.jsp'?'active':''}"
               href="${root}/like">
                My Favorite
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-white rounded-0 ${view=='/main/shareVideo.jsp'?'active':''}"
               href="${root}/share">
                Share Video
            </a>
        </li>
    </div>

    <div class="col-md-10 p-2">
        <main class="pb-2" style="min-height: 93vh">
            <div class="video-block section-padding">
                <div class="row">
                    <div class="col-md-12">
                        <div class="main-title">
                            <div class="btn-group float-right right-action">
                                <a href="#" class="right-action-link text-gray" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Sort by <i class="fa fa-caret-down" aria-hidden="true"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#"><i class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <c:forEach items="${videos}" var="video" varStatus="status">
                        <div class="col-xl-4 col-sm-6 mb-3">
                            <div class="video-card">
                                <div class="video-card-image">
                                    <a href="#">
                                        <img class="img-fluid" src="<c:url value='/templates/user/img/shape-of-you.jpg'/>" alt="">
                                    </a>
                                </div>
                                <div class="video-card-body">
                                    <div class="video-title">
                                        <h3>${video.title}</h3>
                                    </div>
                                    <button class="btn btn-success">Like</button>
                                    <button class="btn btn-primary">Share</button>
                                </div>
                            </div>
                        </div>
                        <c:if test="${status.index % 3 == 2}">
                            <div class="w-100"></div>
                        </c:if>
                    </c:forEach>
                </div>
            </div>
            <nav aria-label="Page navigation">
                <ul class="pagination justify-content-center pagination-sm mb-0">
                    <li class="page-item disabled"><a class="page-link" href="#" tabindex="-1">Previous</a></li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                </ul>
            </nav>
        </main>
    </div>
</div>

<%@include file="/common/footer.jsp" %>
</body>
</html>