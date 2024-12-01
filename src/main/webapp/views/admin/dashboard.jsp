<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
    <div class="container-fluid">
        <div class="row mt-3">

            <%--            <div class="col-lg-3 col-6">--%>
            <%--                <div class="card bg-info">--%>
            <%--                    <div class="card-header"><h3 class="text-center"><i class="fa-solid fa-users"></i> Users</h3></div>--%>
            <%--                    <div class="card-body p-2">--%>
            <%--                        <h1 class="card-title text-center">150</h1>--%>
            <%--                        <a href="${root}/users" class="card-link btn btn-info w-100">--%>
            <%--                            More info <i class="fas fa-arrow-circle-right ms-auto"></i>--%>
            <%--                        </a>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--            </div>--%>

            <%--            <div class="col-lg-3 col-6">--%>
            <%--                <div class="card bg-success">--%>
            <%--                    <div class="card-header"><h3 class="text-center"><i class="fa-solid fa-photo-film"></i> Videos</h3>--%>
            <%--                    </div>--%>
            <%--                    <div class="card-body p-2">--%>
            <%--                        <h1 class="card-title text-center">150</h1>--%>
            <%--                        <a href="#" class="card-link btn btn-success w-100">--%>
            <%--                            More info <i class="fas fa-arrow-circle-right ms-auto"></i>--%>
            <%--                        </a>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--            </div>--%>

            <%--            <div class="col-lg-3 col-6">--%>
            <%--                <div class="card bg-warning">--%>
            <%--                    <div class="card-header"><h3 class="text-center"><i class="fa-solid fa-eye"></i> Views</h3></div>--%>
            <%--                    <div class="card-body p-2">--%>
            <%--                        <h1 class="card-title text-center">150</h1>--%>
            <%--                        <a href="#" class="card-link btn btn-warning w-100">--%>
            <%--                            More info <i class="fas fa-arrow-circle-right ms-auto"></i>--%>
            <%--                        </a>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--            </div>--%>

            <%--            <div class="col-lg-3 col-6">--%>
            <%--                <div class="card bg-danger">--%>
            <%--                    <div class="card-header"><h3 class="text-center"><i class="fa-solid fa-thumbs-up"></i> Likes</h3>--%>
            <%--                    </div>--%>
            <%--                    <div class="card-body p-2">--%>
            <%--                        <h1 class="card-title text-center">150</h1>--%>
            <%--                        <a href="#" class="card-link btn btn-danger w-100">--%>
            <%--                            More info <i class="fas fa-arrow-circle-right ms-auto"></i>--%>
            <%--                        </a>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--            </div>--%>
            <%--        </div>--%>

            <h3 class="mt-3">All Video</h3>
            <div class="card-body mb-3">
                <table id="example2" class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th>Title</th>
                        <th>Link</th>
                        <th>TotalLike</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${videos}" var="item">
                        <tr>
                            <td>${item.title}</td>
                            <td><a href="video?action=watch&id=${item.href}" target="_blank">${item.href}</a></td>
                            <td>${item.totalLike}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

<%--            <h3 class="mt-3">Favorite Info</h3>--%>
<%--            <div class="card-body mb-3 mt-3">--%>
<%--                <div class="dropdown">--%>
<%--                    <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown"--%>
<%--                            aria-expanded="false">--%>
<%--                        List video--%>
<%--                    </button>--%>
<%--                    <ul class="dropdown-menu" id="selectVideo">--%>
<%--                        <c:forEach items="${videos}" var="item">--%>
<%--                            <li><a class="dropdown-item" href="#" data-href="${item.href}">${item.title}</a></li>--%>
<%--                        </c:forEach>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--                <table id="example3" class="table table-bordered table-striped">--%>
<%--                    <thead>--%>
<%--                    <tr>--%>
<%--                        <th>Username</th>--%>
<%--                        <th>Email</th>--%>
<%--                    </tr>--%>
<%--                    </thead>--%>
<%--                    <tbody>--%>

<%--                    </tbody>--%>
<%--                </table>--%>
<%--            </div>--%>

        </div>
    </div>
</div>
<script src="<c:url value="/templates/admin/script.js"/>"></script>