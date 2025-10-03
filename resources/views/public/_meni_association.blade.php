<li class="dropdown dropdown-full-color dropdown-light">
    <a class="dropdown-item dropdown-toggle @if (Request::is('*za-nas*')) active @endif" href="{{ url('static/9/' . $id_association . '/za-nas') }}">
        За нас
    </a>

</li>
<li class="dropdown dropdown-full-color dropdown-light">
    <a class="dropdown-item dropdown-toggle @if (Request::is('*organizacija*')) active @endif" href="{{ url('static/10/' . $id_association . '/organizacija') }}">Организација</a>
</li>
<li class="dropdown dropdown-full-color dropdown-light">
    <a class="dropdown-item dropdown-toggle @if (Request::is('*programa*')) active @endif" href="{{ url('static/15/' . $id_association . '/programa') }}">Програма</a>
</li>
<li class="dropdown dropdown-full-color dropdown-light">
    <a class="dropdown-item dropdown-toggle @if (Request::is('*dokumenti*')) active @endif" href="{{ url('static/11/' . $id_association . '/dokumenti') }}">Документи</a>
</li>
<li class="dropdown dropdown-full-color dropdown-light">
    <a class="dropdown-item dropdown-toggle @if (Request::is('*kontakt*')) active @endif" href="{{ url('static/25/' . $id_association . '/kontakt') }}">Контакт</a>
</li>
<li class="dropdown dropdown-full-color dropdown-light">
    <a class="dropdown-item dropdown-toggle" href="{{ url('index') }}">СЗПМ</a>
</li>

