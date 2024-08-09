<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .gradient-custom {
/* fallback for old browsers */
background: #6a11cb;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1))
}
    </style>
</head>
<body>
<form action="<%=request.getContextPath()%>/login" method="post">
<section class="vh-100 gradient-custom">
<div class="container py-5 h-100">
  <div class="row d-flex justify-content-center align-items-center h-100">
     <div class="col-12 col-md-8 col-lg-6 col-xl-5">
      <div class="card bg-dark text-white" style="border-radius: 1rem;">
         <div class="card-body p-5 text-center">
      		<div class="mb-md-5 mt-md-4 pb-5">
      
                    <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
                    <p class="text-white-50 mb-5">Please enter your login and password!</p>
      
                    <div data-mdb-input-init class="form-outline form-white mb-4">
                      <input type="text" id="typeEmailX" name="userName" class="form-control form-control-lg" />
                      <label class="form-label"  for="typeEmailX">Username</label>
                    </div>
      
                    <div data-mdb-input-init class="form-outline form-white mb-4">
                      <input type="password" id="typePasswordX" name="password" class="form-control form-control-lg" />
                      <label class="form-label" for="typePasswordX">Password</label>
                    </div>
      
                    <input data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-light btn-lg px-5" type="submit" value="Login">
     
      
                  </div>
      
                  
      
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      </form>
</body>
</html>