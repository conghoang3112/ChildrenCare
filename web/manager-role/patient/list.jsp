<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Doctris - Doctor Appointment Booking System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/favicon.ico.png">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- simplebar -->
    <link href="${pageContext.request.contextPath}/assets/css/simplebar.css" rel="stylesheet" type="text/css" />
    <!-- Icons -->
    <link href="${pageContext.request.contextPath}/assets/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/assets/css/remixicon.css" rel="stylesheet" type="text/css" />
    <link href="https://unicons.iconscout.com/release/v3.0.6/css/line.css"  rel="stylesheet">
    <!-- Css -->
    <link href="${pageContext.request.contextPath}/assets/css/style.min.css" rel="stylesheet" type="text/css" id="theme-opt" />

</head>

<body>
<!-- Loader -->
<div id="preloader">
    <div id="status">
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
    </div>
</div>
<!-- Loader -->

<div class="page-wrapper doctris-theme toggled">
    <jsp:include page="../common/sidebar.jsp"></jsp:include>

    <!-- Start Page Content -->
    <main class="page-content bg-light">
        <jsp:include page="../common/header.jsp"></jsp:include>

        <div class="container-fluid">
            <div class="layout-specing">
                <div class="d-md-flex justify-content-between">
                    <h5 class="mb-0">Patients List</h5>

                    <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0">
                        <ul class="breadcrumb bg-transparent rounded mb-0 p-0">
                            <li class="breadcrumb-item"><a href="index.html">Doctris</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Patients</li>
                        </ul>
                    </nav>
                </div>

                <div class="row">
                    <div class="col-12 mt-4">
                        <div class="table-responsive shadow rounded">
                            <table class="table table-center bg-white mb-0">
                                <thead>
                                <tr>
                                    <th class="border-bottom p-3" style="min-width: 50px;">Id</th>
                                    <th class="border-bottom p-3" style="min-width: 180px;">Name</th>
                                    <th class="border-bottom p-3">Age</th>
                                    <th class="border-bottom p-3">Gender</th>
                                    <th class="border-bottom p-3">Address</th>
                                    <th class="border-bottom p-3">Mobile No.</th>
                                    <th class="border-bottom p-3">Department</th>
                                    <th class="border-bottom p-3" style="min-width: 150px;">Date</th>
                                    <th class="border-bottom p-3">Time</th>
                                    <th class="border-bottom p-3">Status</th>
                                    <th class="border-bottom p-3" style="min-width: 100px;"></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th class="p-3">1</th>
                                    <td class="py-3">
                                        <a href="#" class="text-dark">
                                            <div class="d-flex align-items-center">
                                                <img src="${pageContext.request.contextPath}/assets/images/client/01.jpg" class="avatar avatar-md-sm rounded-circle shadow" alt="">
                                                <span class="ms-2">Howard Tanner</span>
                                            </div>
                                        </a>
                                    </td>
                                    <td class="p-3">25</td>
                                    <td class="p-3">Male</td>
                                    <td class="p-3">1451 - ABC Street, NY</td>
                                    <td class="p-3">(+452) 8945 4568</td>
                                    <td class="p-3">Cardiology</td>
                                    <td class="p-3">20th Dec 2020</td>
                                    <td class="p-3">11:00AM</td>
                                    <td class="p-3"><span class="badge bg-soft-success">Approved</span></td>
                                    <td class="text-end p-3">
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-primary" data-bs-toggle="modal" data-bs-target="#viewprofile"><i class="uil uil-eye"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-success" data-bs-toggle="modal" data-bs-target="#editprofile"><i class="uil uil-pen"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-danger"><i class="uil uil-trash"></i></a>
                                    </td>
                                </tr>

                                <tr>
                                    <th class="p-3">2</th>
                                    <td class="py-3">
                                        <a href="#" class="text-dark">
                                            <div class="d-flex align-items-center">
                                                <img src="${pageContext.request.contextPath}/assets/images/client/02.jpg" class="avatar avatar-md-sm rounded-circle shadow" alt="">
                                                <span class="ms-2">Wendy Filson</span>
                                            </div>
                                        </a>
                                    </td>
                                    <td class="p-3">28</td>
                                    <td class="p-3">Female</td>
                                    <td class="p-3">1451 - ABC Street, NY</td>
                                    <td class="p-3">(+452) 8945 4568</td>
                                    <td class="p-3">Gynecology</td>
                                    <td class="p-3">20th Dec 2020</td>
                                    <td class="p-3">11:00AM</td>
                                    <td class="p-3"><span class="badge bg-soft-warning">Pending</span></td>
                                    <td class="text-end p-3">
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-primary" data-bs-toggle="modal" data-bs-target="#viewprofile"><i class="uil uil-eye"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-success" data-bs-toggle="modal" data-bs-target="#editprofile"><i class="uil uil-pen"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-danger"><i class="uil uil-trash"></i></a>
                                    </td>
                                </tr>

                                <tr>
                                    <th class="p-3">3</th>
                                    <td class="py-3">
                                        <a href="#" class="text-dark">
                                            <div class="d-flex align-items-center">
                                                <img src="${pageContext.request.contextPath}/assets/images/client/03.jpg" class="avatar avatar-md-sm rounded-circle shadow" alt="">
                                                <span class="ms-2">Faye Bridger</span>
                                            </div>
                                        </a>
                                    </td>
                                    <td class="p-3">28</td>
                                    <td class="p-3">Female</td>
                                    <td class="p-3">1451 - ABC Street, NY</td>
                                    <td class="p-3">(+452) 8945 4568</td>
                                    <td class="p-3">Psychotherapy</td>
                                    <td class="p-3">20th Dec 2020</td>
                                    <td class="p-3">11:00AM</td>
                                    <td class="p-3"><span class="badge bg-soft-success">Approved</span></td>
                                    <td class="text-end p-3">
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-primary" data-bs-toggle="modal" data-bs-target="#viewprofile"><i class="uil uil-eye"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-success" data-bs-toggle="modal" data-bs-target="#editprofile"><i class="uil uil-pen"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-danger"><i class="uil uil-trash"></i></a>
                                    </td>
                                </tr>

                                <tr>
                                    <th class="p-3">4</th>
                                    <td class="py-3">
                                        <a href="#" class="text-dark">
                                            <div class="d-flex align-items-center">
                                                <img src="${pageContext.request.contextPath}/assets/images/client/04.jpg" class="avatar avatar-md-sm rounded-circle shadow" alt="">
                                                <span class="ms-2">Ronald Curtis</span>
                                            </div>
                                        </a>
                                    </td>
                                    <td class="p-3">25</td>
                                    <td class="p-3">Male</td>
                                    <td class="p-3">1451 - ABC Street, NY</td>
                                    <td class="p-3">(+452) 8945 4568</td>
                                    <td class="p-3">Orthopedic</td>
                                    <td class="p-3">20th Dec 2020</td>
                                    <td class="p-3">11:00AM</td>
                                    <td class="p-3"><span class="badge bg-soft-success">Approved</span></td>
                                    <td class="text-end p-3">
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-primary" data-bs-toggle="modal" data-bs-target="#viewprofile"><i class="uil uil-eye"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-success" data-bs-toggle="modal" data-bs-target="#editprofile"><i class="uil uil-pen"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-danger"><i class="uil uil-trash"></i></a>
                                    </td>
                                </tr>

                                <tr>
                                    <th class="p-3">5</th>
                                    <td class="py-3">
                                        <a href="#" class="text-dark">
                                            <div class="d-flex align-items-center">
                                                <img src="${pageContext.request.contextPath}/assets/images/client/05.jpg" class="avatar avatar-md-sm rounded-circle shadow" alt="">
                                                <span class="ms-2">Melissa Hibner</span>
                                            </div>
                                        </a>
                                    </td>
                                    <td class="p-3">28</td>
                                    <td class="p-3">Female</td>
                                    <td class="p-3">1451 - ABC Street, NY</td>
                                    <td class="p-3">(+452) 8945 4568</td>
                                    <td class="p-3">Dental</td>
                                    <td class="p-3">20th Dec 2020</td>
                                    <td class="p-3">11:00AM</td>
                                    <td class="p-3"><span class="badge bg-soft-warning">Pending</span></td>
                                    <td class="text-end p-3">
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-primary" data-bs-toggle="modal" data-bs-target="#viewprofile"><i class="uil uil-eye"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-success" data-bs-toggle="modal" data-bs-target="#editprofile"><i class="uil uil-pen"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-danger"><i class="uil uil-trash"></i></a>
                                    </td>
                                </tr>

                                <tr>
                                    <th class="p-3">6</th>
                                    <td class="py-3">
                                        <a href="#" class="text-dark">
                                            <div class="d-flex align-items-center">
                                                <img src="${pageContext.request.contextPath}/assets/images/client/06.jpg" class="avatar avatar-md-sm rounded-circle shadow" alt="">
                                                <span class="ms-2">Randall Case</span>
                                            </div>
                                        </a>
                                    </td>
                                    <td class="p-3">25</td>
                                    <td class="p-3">Male</td>
                                    <td class="p-3">1451 - ABC Street, NY</td>
                                    <td class="p-3">(+452) 8945 4568</td>
                                    <td class="p-3">Orthopedic</td>
                                    <td class="p-3">20th Dec 2020</td>
                                    <td class="p-3">11:00AM</td>
                                    <td class="p-3"><span class="badge bg-soft-success">Approved</span></td>
                                    <td class="text-end p-3">
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-primary" data-bs-toggle="modal" data-bs-target="#viewprofile"><i class="uil uil-eye"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-success" data-bs-toggle="modal" data-bs-target="#editprofile"><i class="uil uil-pen"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-danger"><i class="uil uil-trash"></i></a>
                                    </td>
                                </tr>

                                <tr>
                                    <th class="p-3">7</th>
                                    <td class="py-3">
                                        <a href="#" class="text-dark">
                                            <div class="d-flex align-items-center">
                                                <img src="${pageContext.request.contextPath}/assets/images/client/07.jpg" class="avatar avatar-md-sm rounded-circle shadow" alt="">
                                                <span class="ms-2">Jerry Morena</span>
                                            </div>
                                        </a>
                                    </td>
                                    <td class="p-3">25</td>
                                    <td class="p-3">Male</td>
                                    <td class="p-3">1451 - ABC Street, NY</td>
                                    <td class="p-3">(+452) 8945 4568</td>
                                    <td class="p-3">Dentist</td>
                                    <td class="p-3">20th Dec 2020</td>
                                    <td class="p-3">11:00AM</td>
                                    <td class="p-3"><span class="badge bg-soft-warning">Pending</span></td>
                                    <td class="text-end p-3">
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-primary" data-bs-toggle="modal" data-bs-target="#viewprofile"><i class="uil uil-eye"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-success" data-bs-toggle="modal" data-bs-target="#editprofile"><i class="uil uil-pen"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-danger"><i class="uil uil-trash"></i></a>
                                    </td>
                                </tr>

                                <tr>
                                    <th class="p-3">8</th>
                                    <td class="py-3">
                                        <a href="#" class="text-dark">
                                            <div class="d-flex align-items-center">
                                                <img src="${pageContext.request.contextPath}/assets/images/client/08.jpg" class="avatar avatar-md-sm rounded-circle shadow" alt="">
                                                <span class="ms-2">Lester McNally</span>
                                            </div>
                                        </a>
                                    </td>
                                    <td class="p-3">25</td>
                                    <td class="p-3">Male</td>
                                    <td class="p-3">1451 - ABC Street, NY</td>
                                    <td class="p-3">(+452) 8945 4568</td>
                                    <td class="p-3">Gastrology</td>
                                    <td class="p-3">20th Dec 2020</td>
                                    <td class="p-3">11:00AM</td>
                                    <td class="p-3"><span class="badge bg-soft-success">Approved</span></td>
                                    <td class="text-end p-3">
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-primary" data-bs-toggle="modal" data-bs-target="#viewprofile"><i class="uil uil-eye"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-success" data-bs-toggle="modal" data-bs-target="#editprofile"><i class="uil uil-pen"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-danger"><i class="uil uil-trash"></i></a>
                                    </td>
                                </tr>

                                <tr>
                                    <th class="p-3">9</th>
                                    <td class="py-3">
                                        <a href="#" class="text-dark">
                                            <div class="d-flex align-items-center">
                                                <img src="${pageContext.request.contextPath}/assets/images/client/09.jpg" class="avatar avatar-md-sm rounded-circle shadow" alt="">
                                                <span class="ms-2">Christopher Burrell</span>
                                            </div>
                                        </a>
                                    </td>
                                    <td class="p-3">28</td>
                                    <td class="p-3">Female</td>
                                    <td class="p-3">1451 - ABC Street, NY</td>
                                    <td class="p-3">(+452) 8945 4568</td>
                                    <td class="p-3">Urology</td>
                                    <td class="p-3">20th Dec 2020</td>
                                    <td class="p-3">11:00AM</td>
                                    <td class="p-3"><span class="badge bg-soft-success">Approved</span></td>
                                    <td class="text-end p-3">
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-primary" data-bs-toggle="modal" data-bs-target="#viewprofile"><i class="uil uil-eye"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-success" data-bs-toggle="modal" data-bs-target="#editprofile"><i class="uil uil-pen"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-danger"><i class="uil uil-trash"></i></a>
                                    </td>
                                </tr>

                                <tr>
                                    <th class="p-3">10</th>
                                    <td class="py-3">
                                        <a href="#" class="text-dark">
                                            <div class="d-flex align-items-center">
                                                <img src="${pageContext.request.contextPath}/assets/images/client/10.jpg" class="avatar avatar-md-sm rounded-circle shadow" alt="">
                                                <span class="ms-2">Mary Skeens</span>
                                            </div>
                                        </a>
                                    </td>
                                    <td class="p-3">28</td>
                                    <td class="p-3">Female</td>
                                    <td class="p-3">1451 - ABC Street, NY</td>
                                    <td class="p-3">(+452) 8945 4568</td>
                                    <td class="p-3">Neurology</td>
                                    <td class="p-3">20th Dec 2020</td>
                                    <td class="p-3">11:00AM</td>
                                    <td class="p-3"><span class="badge bg-soft-warning">Pending</span></td>
                                    <td class="text-end p-3">
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-primary" data-bs-toggle="modal" data-bs-target="#viewprofile"><i class="uil uil-eye"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-success" data-bs-toggle="modal" data-bs-target="#editprofile"><i class="uil uil-pen"></i></a>
                                        <a href="#" class="btn btn-icon btn-pills btn-soft-danger"><i class="uil uil-trash"></i></a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div><!--end row-->

                <div class="row text-center">
                    <!-- PAGINATION START -->
                    <div class="col-12 mt-4">
                        <div class="d-md-flex align-items-center text-center justify-content-between">
                            <span class="text-muted me-3">Showing 1 - 10 out of 50</span>
                            <ul class="pagination justify-content-center mb-0 mt-3 mt-sm-0">
                                <li class="page-item"><a class="page-link" href="javascript:void(0)" aria-label="Previous">Prev</a></li>
                                <li class="page-item active"><a class="page-link" href="javascript:void(0)">1</a></li>
                                <li class="page-item"><a class="page-link" href="javascript:void(0)">2</a></li>
                                <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
                                <li class="page-item"><a class="page-link" href="javascript:void(0)" aria-label="Next">Next</a></li>
                            </ul>
                        </div>
                    </div><!--end col-->
                    <!-- PAGINATION END -->
                </div><!--end row-->
            </div>
        </div><!--end container-->

        <jsp:include page="../common/footer.jsp"></jsp:include>
    </main>
    <!--End page-content" -->
</div>
<!-- page-wrapper -->

<!-- Offcanvas Start -->
<div class="offcanvas offcanvas-end bg-white shadow" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
    <div class="offcanvas-header p-4 border-bottom">
        <h5 id="offcanvasRightLabel" class="mb-0">
            <img src="${pageContext.request.contextPath}/assets/images/logo-dark.png" height="24" class="light-version" alt="">
            <img src="${pageContext.request.contextPath}/assets/images/logo-light.png" height="24" class="dark-version" alt="">
        </h5>
        <button type="button" class="btn-close d-flex align-items-center text-dark" data-bs-dismiss="offcanvas" aria-label="Close"><i class="uil uil-times fs-4"></i></button>
    </div>
    <div class="offcanvas-body p-4 px-md-5">
        <div class="row">
            <div class="col-12">
                <!-- Style switcher -->
                <div id="style-switcher">
                    <div>
                        <ul class="text-center list-unstyled mb-0">
                            <li class="d-grid"><a href="javascript:void(0)" class="rtl-version t-rtl-light" onclick="setTheme('style-rtl')"><img src="${pageContext.request.contextPath}/assets/images/layouts/light-dash-rtl.png" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block">RTL Version</span></a></li>
                            <li class="d-grid"><a href="javascript:void(0)" class="ltr-version t-ltr-light" onclick="setTheme('style')"><img src="${pageContext.request.contextPath}/assets/images/layouts/light-dash.png" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block">LTR Version</span></a></li>
                            <li class="d-grid"><a href="javascript:void(0)" class="dark-rtl-version t-rtl-dark" onclick="setTheme('style-dark-rtl')"><img src="${pageContext.request.contextPath}/assets/images/layouts/dark-dash-rtl.png" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block">RTL Version</span></a></li>
                            <li class="d-grid"><a href="javascript:void(0)" class="dark-ltr-version t-ltr-dark" onclick="setTheme('style-dark')"><img src="${pageContext.request.contextPath}/assets/images/layouts/dark-dash.png" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block">LTR Version</span></a></li>
                            <li class="d-grid"><a href="javascript:void(0)" class="dark-version t-dark mt-4" onclick="setTheme('style-dark')"><img src="${pageContext.request.contextPath}/assets/images/layouts/dark-dash.png" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block">Dark Version</span></a></li>
                            <li class="d-grid"><a href="javascript:void(0)" class="light-version t-light mt-4" onclick="setTheme('style')"><img src="${pageContext.request.contextPath}/assets/images/layouts/light-dash.png" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block">Light Version</span></a></li>
                            <li class="d-grid"><a href="../landing/index.html" target="_blank" class="mt-4"><img src="${pageContext.request.contextPath}/assets/images/layouts/landing-light.png" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block">Landing Demos</span></a></li>
                        </ul>
                    </div>
                </div>
                <!-- end Style switcher -->
            </div><!--end col-->
        </div><!--end row-->
    </div>

    <div class="offcanvas-footer p-4 border-top text-center">
        <ul class="list-unstyled social-icon mb-0">
            <li class="list-inline-item mb-0"><a href="https://1.envato.market/doctris-template" target="_blank" class="rounded"><i class="uil uil-shopping-cart align-middle" title="Buy Now"></i></a></li>
            <li class="list-inline-item mb-0"><a href="https://dribbble.com/shreethemes" target="_blank" class="rounded"><i class="uil uil-dribbble align-middle" title="dribbble"></i></a></li>
            <li class="list-inline-item mb-0"><a href="https://www.facebook.com/shreethemes" target="_blank" class="rounded"><i class="uil uil-facebook-f align-middle" title="facebook"></i></a></li>
            <li class="list-inline-item mb-0"><a href="https://www.instagram.com/shreethemes/" target="_blank" class="rounded"><i class="uil uil-instagram align-middle" title="instagram"></i></a></li>
            <li class="list-inline-item mb-0"><a href="https://twitter.com/shreethemes" target="_blank" class="rounded"><i class="uil uil-twitter align-middle" title="twitter"></i></a></li>
            <li class="list-inline-item mb-0"><a href="mailto:support@shreethemes.in" class="rounded"><i class="uil uil-envelope align-middle" title="email"></i></a></li>
            <li class="list-inline-item mb-0"><a href="../../../index.html" target="_blank" class="rounded"><i class="uil uil-globe align-middle" title="website"></i></a></li>
        </ul><!--end icon-->
    </div>
</div>
<!-- Offcanvas End -->

<!-- Modal start -->
<!-- Profile Settings Start -->
<div class="modal fade" id="editprofile" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header border-bottom p-3">
                <h5 class="modal-title" id="exampleModalLabel">Profile Settings</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body p-3 pt-4">
                <div class="row align-items-center">
                    <div class="col-lg-2 col-md-4">
                        <img src="${pageContext.request.contextPath}/assets/images/doctors/01.jpg" class="avatar avatar-md-md rounded-pill shadow mx-auto d-block" alt="">
                    </div><!--end col-->

                    <div class="col-lg-5 col-md-8 text-center text-md-start mt-4 mt-sm-0">
                        <h6 class="">Upload your picture</h6>
                        <p class="text-muted mb-0">For best results, use an image at least 256px by 256px in either .jpg or .png format</p>
                    </div><!--end col-->

                    <div class="col-lg-5 col-md-12 text-lg-end text-center mt-4 mt-lg-0">
                        <a href="#" class="btn btn-primary">Upload</a>
                        <a href="#" class="btn btn-soft-primary ms-2">Remove</a>
                    </div><!--end col-->
                </div><!--end row-->

                <form class="mt-4">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">First Name</label>
                                <input name="name" id="name" type="text" class="form-control" placeholder="First Name :">
                            </div>
                        </div><!--end col-->

                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">Last Name</label>
                                <input name="name" id="name2" type="text" class="form-control" placeholder="Last Name :">
                            </div>
                        </div><!--end col-->

                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">Your Email</label>
                                <input name="email" id="email" type="email" class="form-control" placeholder="Your email :">
                            </div>
                        </div><!--end col-->

                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">Phone no.</label>
                                <input name="number" id="number" type="text" class="form-control" placeholder="Phone no. :">
                            </div>
                        </div><!--end col-->

                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Your Bio Here</label>
                                <textarea name="comments" id="comments" rows="4" class="form-control" placeholder="Bio :"></textarea>
                            </div>
                        </div>
                    </div><!--end row-->

                    <div class="row">
                        <div class="col-sm-12">
                            <input type="submit" id="submit" name="send" class="btn btn-primary" value="Save changes">
                        </div><!--end col-->
                    </div><!--end row-->
                </form><!--end form-->
            </div>
        </div>
    </div>
</div>
<!-- Profile Settings End -->

<!-- Profile Start -->
<div class="modal fade" id="viewprofile" tabindex="-1" aria-labelledby="exampleModalLabel1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header border-bottom p-3">
                <h5 class="modal-title" id="exampleModalLabel1">Profile</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body p-3 pt-4">
                <div class="d-flex align-items-center">
                    <img src="${pageContext.request.contextPath}/assets/images/client/01.jpg" class="avatar avatar-small rounded-pill" alt="">
                    <h5 class="mb-0 ms-3">Howard Tanner</h5>
                </div>
                <ul class="list-unstyled mb-0 d-md-flex justify-content-between mt-4">
                    <li>
                        <ul class="list-unstyled mb-0">
                            <li class="d-flex">
                                <h6>Age:</h6>
                                <p class="text-muted ms-2">25 year old</p>
                            </li>

                            <li class="d-flex">
                                <h6>Gender:</h6>
                                <p class="text-muted ms-2">Male</p>
                            </li>

                            <li class="d-flex">
                                <h6 class="mb-0">Department:</h6>
                                <p class="text-muted ms-2 mb-0">Cardiology</p>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <ul class="list-unstyled mb-0">
                            <li class="d-flex">
                                <h6>Date:</h6>
                                <p class="text-muted ms-2">20th Dec 2020</p>
                            </li>

                            <li class="d-flex">
                                <h6>Time:</h6>
                                <p class="text-muted ms-2">11:00 AM</p>
                            </li>

                            <li class="d-flex">
                                <h6 class="mb-0">Doctor:</h6>
                                <p class="text-muted ms-2 mb-0">Dr. Calvin Carlo</p>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Profile End -->
<!-- Modal end -->

<!-- javascript -->
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
<!-- simplebar -->
<script src="${pageContext.request.contextPath}/assets/js/simplebar.min.js"></script>
<!-- Icons -->
<script src="${pageContext.request.contextPath}/assets/js/feather.min.js"></script>
<!-- Main Js -->
<script src="${pageContext.request.contextPath}/assets/js/app.js"></script>

</body>

</html>
