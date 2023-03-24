<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <title>Dashboard</title>
        <style>
            h2{
                text-align: center;
            }
            h5{
                font-size: 20px;
                text-align: center;
            }
            #dash1{
                padding-top: 25px;
                padding-bottom: 25px;
            }
            #dash2{
                padding-top: 25px;
                padding-bottom: 25px;
            }
        </style>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
         
</head>
    <body>
        
         <div class="container">
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                  <a class="navbar-brand" href="#"><img class="rounded-circle shadow-4-strong" height="100px" width="100px" src="./resources/static/images/trysol.jpg" alt="logo" /></a>
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                      <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/">Home</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">Features</a>
                      </li>
                    </ul>
                  </div>
                  <form:form action="${pageContext.request.contextPath}/logout" method="post">
            <input type="submit" value="logout" />
    </form:form>
                </div>
              </nav>
         </div> 
         <h2>Purchase Order</h3>
        <hr>
         <section id="dash1">
         <div class="container">
            <div class="row">
                <div class="col-lg-3">
                        <div class="card-body" style="background-color: skyblue;">
                            <h5>Company Documents</h3>
                          <a href="https://docs.google.com/spreadsheets/d/1VkplxTyUR8bFVk5J1TJ_16Hibv-iOqo7SjF0657FKI0/edit?usp=sharing_eil_se_dm&ts=641d243f"><img src="./resources/static/images/people.png" alt="people" height="55px" width="55px" /></a>
                      </div>
                </div>
                <div class="col-lg-3">
                        <div class="card-body" style="background-color: yellow;">
                            <h5>HR Master Data Sheets</h3>
                            <a href="#"><img src="./resources/static/images/calender1.png" alt="people" height="55px" width="55px" /></a>
                      </div>
                </div>
                <div class="col-lg-3">
                        <div class="card-body" style="background-color: orange;">
                            <h5>Great HR Link</h3>
                            <a href="#"><img src="./resources/static/images/calender2.png" alt="people" height="55px" width="55px" /></a>
                      </div>
                </div>
                <div class="col-lg-3">
                        <div class="card-body" style="background-color: orangered;">
                            <h5>Contract Sheet</h5>
                            <a href="#"><img src="./resources/static/images/calender3.png" alt="people" height="55px" width="55px" /></a>
                      </div>
                </div>
            </div>
        </div>
    </section>
    <h2>Payments & Invoice Summary</h3>
    <hr>
    <section id="dash2">
        <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="card-body" style="background-color: skyblue;">
                    <h5>Finance Documents</h3>
                  <a href="#"><img src="./resources/static/images/people.png" alt="people" height="55px" width="55px" /></a>
              </div>
        </div>
        <div class="col-lg-3">
                <div class="card-body" style="background-color: yellow;">
                    <h5>GST Master Sheets</h3>
                    <a href="#"><img src="./resources/static/images/calender1.png" alt="people" height="55px" width="55px" /></a>
              </div>
        </div>
        <div class="col-lg-3">
                <div class="card-body" style="background-color: orange;">
                    <h5>Invoices</h3>
                    <a href="#"><img src="./resources/static/images/calender2.png" alt="people" height="55px" width="55px" /></a>
              </div>
        </div>
        <div class="col-lg-3">
                <div class="card-body" style="background-color: orangered;">
                    <h5>Finance Quick Books</h5>
                    <a href="#"><img src="./resources/static/images/calender3.png" alt="people" height="55px" width="55px" /></a>
              </div>
        </div>
        </div>
        </div>
    </section>
    <a href="/"><p style="text-align: center;">Back to Home</p></a>
    </body>
</html>