<!-- Id Field -->
<div class="col-sm-12">
    {!! Form::label('id', 'Id:') !!}
    <p>{{ $aboutUs->id }}</p>
</div>

<!-- Photo Field -->
<div class="col-sm-12">
    {!! Form::label('photo', 'Photo:') !!}
    <p>{{ $aboutUs->photo }}</p>
</div>

<!-- Created At Field -->
<div class="col-sm-12">
    {!! Form::label('created_at', 'Created At:') !!}
    <p>{{ $aboutUs->created_at }}</p>
</div>

<!-- Updated At Field -->
<div class="col-sm-12">
    {!! Form::label('updated_at', 'Updated At:') !!}
    <p>{{ $aboutUs->updated_at }}</p>
</div>

