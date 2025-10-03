<li class="dropdown dropdown-full-color dropdown-light">
    <a class="dropdown-item dropdown-toggle  @if (Request::is('*index*')) active @endif" href="{{ url('index') }}">
        Почеток
    </a>
</li>
<li class="dropdown dropdown-full-color dropdown-light dropdown-mega">
    <a class="dropdown-item dropdown-toggle @if (Request::is('*za-nas*')) active @endif" href="{{ url('static/9/57/za-nas') }}">
        За нас
    </a>
</li>
<li class="dropdown dropdown-full-color dropdown-light">
    <a class="dropdown-item dropdown-toggle" href="#">
        Акти
    </a>
    <ul class="dropdown-menu">
        <li>
            <a class="dropdown-item" href="{{ url('static/13/57/statut') }}">Статус</a>

        </li>
        <li>
            <a class="dropdown-item" href="{{ url('static/14/57/pravilnici') }}">Правилници</a>

        </li>
        <li>
            <a class="dropdown-item" href="{{ url('static/15/57/programa') }}">Програма</a>

        </li>
        <li>
            <a class="dropdown-item" href="{{ url('static/16/57/Izvestai') }}">Извештаи</a>

        </li>
        <li>
            <a class="dropdown-item" href="{{ url('static/17/57/statut') }}">Годишни сметки</a>

        </li>
        <li>
            <a class="dropdown-item" href="{{ url('static/18/57/statut') }}">Финансиски планови </a>
        </li>
    </ul>
</li>
<li class="dropdown dropdown-full-color dropdown-light">
    <a class="dropdown-item dropdown-toggle @if (Request::is('*organizacija*')) active @endif" href="{{ url('static/10/57/organizacija') }}">
        Организација
    </a>
</li>
<li class="dropdown dropdown-full-color dropdown-light">
    <a class="dropdown-item dropdown-toggle @if (Request::is('*associations*')) active @endif" href="{{ url('associations') }}">
        Здруженија
    </a>
</li>
<li class="dropdown dropdown-full-color dropdown-light">
    <a class="dropdown-item dropdown-toggle" href="#">
        Изданија
    </a>
    <ul class="dropdown-menu">

        <li>
            <a class="dropdown-item" href="{{ url('records/24/57/vesnici') }}">Весници</a>

        </li>
        <li>
            <a class="dropdown-item" href="{{ url('records/20/57/penzionerski-vidici') }}">Пензионерски видици</a>

        </li>
        <li>
            <a class="dropdown-item" href="{{ url('records/21/57/bilteni') }}">Билтени</a>

        </li>
        <li>
            <a class="dropdown-item" href="{{ url('records/22/57/koha') }}">Коха</a>

        </li>
        <li>
            <a class="dropdown-item" href="{{ url('records/23/57/knigi') }}">Книги</a>
        </li>
    </ul>
</li>
<li class="dropdown dropdown-full-color dropdown-light">
    <a class="dropdown-item dropdown-toggle @if (Request::is('*novosti*')) active @endif" href="{{ url('records/8/57/novosti') }}">
        Новости
    </a>
</li>
<li class="dropdown dropdown-full-color dropdown-light">
    <a class="dropdown-item dropdown-toggle @if (Request::is('*galerija*')) active @endif" href="{{ url('static/26/57/galerija') }}">
        Галерија
    </a>
</li>
<li class="dropdown dropdown-full-color dropdown-light">
    <a class="dropdown-item dropdown-toggle @if (Request::is('*kontakt*')) active @endif" href="{{ url('static/25/57/kontakt') }}">
        Контакт
    </a>
</li>

