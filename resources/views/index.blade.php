@extends('layout.baseview')
@section('title','Login')
@section('style')
<style>
.navbar-brand img {
    width: 10px;
}

body {
    /* background-color: rgb(255, 244, 197); */
    background: #fceabb;  /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #f8b500, #fceabb);  /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #f8b500, #fceabb); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

}

.navbar .navbar-nav .nav-link {
    font-size: 1.1em;
    padding: 0.5em 1em;
}

a {
    text-decoration: none;
}

.form-control{
    background: transparent;
    border-color: black;
}

@media screen and (min-width: 768px) {
    .navbar-brand img {
        width: 80px;
    }

    .navbar-brand {
        margin-right: 0;
        padding: 0 1em;
    }
}
</style>
@endsection
@section('content')

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-lightcyan">
            <div class="container-fluid">
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbar1">
                    <i class="bi bi-list"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbar1">
                    <div class="navbar-nav mx-auto text-black">

                        <a href="{{url('')}}" class="nav-item nav-link active" style="font-size: 20px">Home</a>
                        <a href="{{url('page/team')}}" class="nav-item nav-link text-black" style="font-size: 20px">Team</a>
                        <a href="{{url('')}}" class="navbar-brand d-none d-md-block">
                            <img src="{{asset('assets/images/logo.png')}}" alt="Brand Logo" height="75px">
                        </a>
                        <a href="{{url('page/about-us')}}" class="nav-link text-black" style="font-size: 20px">About Us</a>
                        <a href="{{url('page/contact-us')}}" class="nav-item nav-link text-black" style="font-size: 20px">Contact Us</a>
                    </div>
                </div>
            </div>
        </nav>
        <div id="carousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carousel" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#carousel" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#carousel" data-bs-slide-to="2"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="{{asset('assets/images/1.jpg')}}" class="d-block w-100" alt="Carousel 1"
                        style="max-height: 100vh;">
                </div>
                <div class="carousel-item">
                    <img src="{{asset('assets/images/2.jpeg')}}" class="d-block w-100" alt="Carousel 2"
                        style="max-height: 100vh;">
                </div>
                <div class="carousel-item">
                    <img src="{{asset('assets/images/3.jpg')}}" class="d-block w-100" alt="Carousel 3"
                        style="max-height: 100vh;">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carousel" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>
    </header>
    <main class="m-5" >
        <div class="container">
        <section class="container m-4" id="about-us">
            <h6 class="display-5 text-center" ><b>About Us</b></h6>
            <div class="row">
                <div class="col-md-5">
                    <div class="container">
                        <img src="{{asset('assets/images/logo.png')}}" class="d-block w-100" alt="about us">
                    </div>
                </div>
                <div class="col-md-7">
                    <p style="text-align: justify;">
                    <h1 class="text-center" style="font-family: Slabo 27px;">Introducing Sunrise Hotels</h1>
                    <br>
                    <p style="text-align: justify; font-family: EB Garamond; font-size: 20px;">Our hotel was founded by Mr. George Fernandes, a
                        visionary entrepreneur with a passion for creating exceptional hospitality experiences. With his
                        keen business acumen and commitment to excellence, Mr. Fernandes established our hotel as a premier
                        destination for luxury and comfort.</p>
                    <br>
                    <p style="text-align: justify; font-family: EB Garamond; font-size: 20px;"> Overseeing the day-to-day operations and ensuring the highest
                        standards of service is Mr. Karan Singh, our esteemed manager. With a wealth of experience in the hospitality industry, Mr.
                        Singh leads our dedicated team to provide personalized and memorable experiences for our valued
                        guests. His leadership and attention to detail ensure that every aspect of your stay is
                        meticulously taken care of.</p>
                    <br>
                    <p style="text-align: justify; font-family: EB Garamond; font-size: 20px;">Under the guidance of Mr. George Fernandes and the expertise of Mr.
                        Karan Singh, our hotel has
                        flourished into a renowned establishment that epitomizes luxury, elegance, and exceptional
                        service. We are proud to have such passionate individuals leading our team, dedicated to
                        creating unforgettable moments for every guest who walks through our doors.</p>
                    </p>
                </div>
            </div>
            <div class="row">
                <h6 class="display-6 text-center" style="font-family: Slabo 27px;">What Makes us Unique</h6>
                <div class="col-md-4">
                    <div class="container text-center">
                        <span class="bi bi-gift-fill color-teal icon-lg" ></span>
                        <p>Exclusive Offers and Packages</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="container text-center">
                        <span class="bi bi-cup-straw color-teal icon-lg"></span>
                        <p>Dining and Culinary Experiences</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="container text-center">
                        <span class="bi bi-buildings-fill color-teal icon-lg"></span>
                        <p>Accommodation Options</p>
                    </div>
                </div>
            </div>
        </section>
        <section id="team" class="container m-4">
            <h6 class="display-5 text-center"> Our Innovative Team</h6>
            <div class="container">
                <div class="row">
                    <div class="col-md-4 d-flex align-center justify-content-center">
                        <div style="width: 300px;">
                            <img class="card-img-top" src="{{asset('assets/images/person.png')}}">
                            <div class="card-body text-center">
                                <h4 class="card-title">George Fernandes</h4>
                                <p class="card-text">Founder of the Hotel</p>
                                <a href="#" style="color: black;"><i class="bi bi-facebook icon-sm m-2"></i></a>
                                <a href="#" style="color: black;"><i class="bi bi-instagram icon-sm m-2"></i></a>
                                <a href="#" style="color: black;"><i class="bi bi-linkedin icon-sm m-2"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex align-center justify-content-center">
                        <div style="width: 300px;">
                            <img class="card-img-top" src="{{asset('assets/images/person.png')}}">
                            <div class="card-body text-center">
                                <h4 class="card-title">Karan Singh</h4>
                                <p class="card-text">Manager of the Hotel</p>
                                <a href="#" style="color: black;"><i class="bi bi-facebook icon-sm m-2"></i></a>
                                <a href="#" style="color: black;"><i class="bi bi-instagram icon-sm m-2"></i></a>
                                <a href="#" style="color: black;"><i class="bi bi-linkedin icon-sm m-2"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex align-center justify-content-center">
                        <div style="width: 300px;">
                            <img class="card-img-top" src="{{asset('assets/images/person.png')}}">
                            <div class="card-body text-center">
                                <h4 class="card-title">Anil Mulchandani</h4>
                                <p class="card-text">Treasurer</p>
                                <a href="#" style="color: black;"><i class="bi bi-facebook icon-sm m-2"></i></a>
                                <a href="#" style="color: black;"><i class="bi bi-instagram icon-sm m-2"></i></a>
                                <a href="#" style="color: black;"><i class="bi bi-linkedin icon-sm m-2"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="contact" class="container m-4">
            <h6 class="display-5 text-center">Contact Us</h6>
            <div class="row">
                <div class="col-md-6">
                    <div class="container p-3">
                        <p class="text-muted text-center fs-3">Here's our contact info</p>
                        <div class="text-black-s text-center fs-4">Our email</div>
                        <div class="text-black-50 text-center fs-5">sunrisehotels@gmail.com</div>
                        <div class="text-black-s text-center fs-4">Our Telephone No.</div>
                        <div class="text-black-50 text-center fs-5">0251-220-123</div>
                        <div class="text-black-s text-center fs-4">Our Address</div>
                        <div class="text-black-50 text-center fs-5">Calanguate Beach,Goa<br>Goa 403 519</div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="container">
                        <p class="text-muted text-center fs-3">You can also Write to us</p>
                        <div class="container p-3">
                                <div class="card-body">
                                    <form>
                                        <div class="form-group">
                                            <label for="name" class="form-label"> Enter Your Name</label>
                                            <input type="text" class="form-control" name="name" id="name">
                                        </div>
                                        <div class="form-group">
                                            <label for="emailid" class="form-label"> Enter Your Email</label>
                                            <input type="text" class="form-control" name="email" id="emailid">
                                        </div>
                                        <div class="form-group">
                                            <label for="subject" class="form-label"> Enter Your Subject</label>
                                            <input type="text" class="form-control" name="subject" id="subject">
                                        </div>
                                        <div class="form-group">
                                            <label for="message" class="form-label"> Enter Your Message</label>
                                            <textarea type="text" class="form-control" name="message"
                                                id="message"></textarea>
                                        </div>
                                        <br>
                                        <div class="form-group text-center">
                                            <input type="submit" class="btn btn-outline-dark" value="Send Message">
                                        </div>
                                    </form>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    </main>

    <footer style="background-color:gray">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="container m-5">
                        <div>
                            <p class="text-white" style="text-align: justify;">Sunrise Hotel is a luxurious and conveniently located hotel in Goa. With a commitment to personalized service, they offer beautifully appointed rooms, exquisite dining options, and a spa and fitness center for relaxation. They specialize in hosting events and conferences with state-of-the-art facilities. Sustainability is a priority, and they actively promote eco-friendly practices. The dedicated staff is available around the clock to assist guests with any requests. Sunrise Hotel aims to provide exceptional service and unforgettable experiences, ensuring that guests have a memorable and enjoyable stay.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="container m-5">
                        <p class="text-white fs-5">Quick Links</p>
                        <ul class="remove-bullets remove-text-decoration" style="color: white; ">
                            <li><i class="bi bi-instagram" style="color: white;"></i> <a href="#"
                                    class="remove-text-decoration text-white">Instagram</a></li>
                            <li><i class="bi bi-facebook" style="color: white;"></i> <a href="#"
                                    class="remove-text-decoration text-white">Facebook</a></li>
                            <li><i class="bi bi-linkedin" style="color: white;"></i> <a href="#"
                                    class="remove-text-decoration text-white">Linkedin</a></li>
                            <li><i class="bi bi-youtube" style="color: white;"></i> <a href="#"
                                    class="remove-text-decoration text-white">Youtube</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="text-white text-center">
                    <p>All Rights Reserved &copy 2023</p>
                </div>
            </div>
        </div>
    </footer>
</body>
@endsection
@section('customjs')
<script>
</script>
@endsection