<%@include file="head.jsp"%>
<form action="/add-news" method="post">
    <div class="row">
        <div class="col-12">
            <label>Title : </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="text" class="form-control" name="title">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <label>Content : </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <textarea rows="3" name="content" class="form-control"></textarea>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <label>Description:</label>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <button class="btn btn-success">ADD NEWS</button>
        </div>
    </div>
</form>