<!DOCTYPE html>

<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Plus Code</title>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,700' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="{{ asset("css/styles.css") }}">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://use.typekit.net/sqr4veo.js"></script>
  <script>try{Typekit.load({ async: true });}catch(e){}</script>
</head>
<body>
  <div class="border"></div>
  <div class="wrapper">
    <header class="main_header clearfix">
      <div class="logo">
        <img src="{{ asset("images/logo.png") }}" alt="Plus-Code">
        <a href="/"><h1>Plus<span>Code</span></h1></a>
      </div>
      <nav class="nav">
        <a href="{{ route('categories.index') }}">Categorias</a>
        <a href="{{ route('plus-code.index') }}">Plus-Code</a>
        <a href="{{ route('learning.index') }}">Aula Virtual</a>
        <a href="https://github.com/HectorVallejosSanchez">Contacto</a>
      </nav>
    </header>

    <ul id="timeline">
      @foreach($items as $item)
      <a href="{{ $item->link }}">
        <li class="listing clearfix">
          <div class="image_wrapper">
            <img src="/images/{{ $category-> photo }}.png" alt="Category">
          </div>
          <div class="info">
            <span class="job_title">{{ $item->name }}</span>
            <span class="job_info">{{ $category->description1 }} <span>&bull;</span> {{ $category->description2 }} <span>&bull;</span> {{ $category->description3 }} </span>
          </div>
          @if ( $item->level_id  == 1) 
          <span class="job_type basico">BÁSICO</span>
          @elseif ( $item->level_id == 2 )
          <span class="job_type intermedio">INTERMEDIO</span>
          @else
          <span class="job_type avanzado">AVANZADO</span>
          @endif
        </li>
      </a>
      @endforeach
     </ul>  
      @if(count($items) == 0)
        <ul id="timeline">
          <li class="listing clearfix">
            <div class="image_wrapper">
              <img src="{{ asset('images/dribbble.jpg') }}" alt="No se encontro registros">
            </div>
            <div class="info">
              <span class="job_title">Se está actualizando el contenido!</span>
            </div>
          </li>
        </ul>  
      @endif

    </ul>
  </div>
</body>
</html>