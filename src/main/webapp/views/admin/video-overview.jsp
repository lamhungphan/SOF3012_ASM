<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/common/head.jsp" %>
    <title>Admin page</title>
</head>
<body>
<%@include file="/common/header.jsp" %>
<div class="container-fluid row p-0 m-0">
    <div class="nav nav-pills bg-dark flex-column col-md-2 p-0 sticky-top" style="max-height: 100vh; font-size: 1.2rem">
        <li class="nav-item w-100">
            <a class="nav-link text-white rounded-0 p-3 w-100"
               href="<c:url value='/admin/dashboard'/>">
                <i class="fa-solid fa-house"></i> Dashboard
            </a>
        </li>
        <li class="nav-item w-100">
            <a class="nav-link text-white w-100 p-3 rounded-0"
               href="#">
                <i class="fa-solid fa-users"></i> Users
            </a>
        </li>
        <li class="nav-item dropdown w-100">
            <a class="nav-link text-white rounded-0 dropdown-toggle w-100 p-3"
               href="#" data-bs-toggle="dropdown">
                <i class="fa-solid fa-photo-film"></i> Videos
            </a>
            <ul class="dropdown-menu w-100 p-0 m-0 rounded-0">
                <li><a class="dropdown-item w-100 p-2" href="<c:url value='/admin/video?action=view'/>">Manage
                    Videos</a></li>
                <li><a class="dropdown-item w-100 p-2" href="<c:url value='/admin/video?action=add'/>">Video Edit</a>
                </li>
            </ul>
        </li>
        <li class="nav-item w-100">
            <a class="nav-link text-white w-100 p-3 rounded-0"
               href="<c:url value='/admin/favorite'/> ">
                <i class="fa-solid fa-heart"></i> Favorite
            </a>
        </li>
    </div>
    <div class="col-md-10 p-0">
        <main class="pb-2" style="min-height: 93vh">
            <div class="container">
                <div class="container-fluid">
                    <h3 class="mt-3">List Video</h3>
                    <div class="card-body mb-3 mt-3">
                        <table id="example" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th>Title</th>
                                <th>Description</th>
                                <th>Link</th>
                                <th>Poster</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${videoList}" var="item">
                                <tr>
                                    <td>${item.title}</td>
                                    <td>${item.description}</td>
                                    <td><a href="video?action=watch&id=${item.href}">${item.href}</a></td>
                                    <td>
                                        <img src="${item.poster}" width="120px"/>
                                    </td>
                                    <td>
                                        <a href="<c:url value='/admin/video?action=edit&href=${item.href}'/>"
                                           class="btn btn-success">Edit</a>
                                        <button class="btn btn-danger" onclick="deleteVideo('${item.href}')">Delete
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

<script src="<c:url value="/templates/admin/script.js"/>"></script>
<script>
    function deleteVideo(href) {
        $.ajax({
            url: '/Java4_Youtube_war/admin/video?action=delete&href=' + href
        }).then(function (data) {
            window.location.href = "http://localhost:8080/Java4_Youtube_war/admin/video?action=view"
        }).fail(function (error) {
            alert("Delete fail, please try again!");
        });
    };
</script>
<%@include file="/common/footer.jsp" %>
</body>
</html>