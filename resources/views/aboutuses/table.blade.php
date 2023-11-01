<div class="card-body p-0">
    <div class="table-responsive">
        <table class="table" id="aboutuses-table">
            <thead>
            <tr>
                <th>Id</th>
                <th>Photo</th>
                <th colspan="3">Action</th>
            </tr>
            </thead>
            <tbody>
            @foreach($aboutuses as $aboutUs)
                <tr>
                    <td>{{ $aboutUs->id }}</td>
                    <td>{{ $aboutUs->photo }}</td>
                    <td  style="width: 120px">
                        {!! Form::open(['route' => ['aboutuses.destroy', $aboutUs->id], 'method' => 'delete']) !!}
                        <div class='btn-group'>
                            <a href="{{ route('aboutuses.show', [$aboutUs->id]) }}"
                               class='btn btn-default btn-xs'>
                                <i class="far fa-eye"></i>
                            </a>
                            <a href="{{ route('aboutuses.edit', [$aboutUs->id]) }}"
                               class='btn btn-default btn-xs'>
                                <i class="far fa-edit"></i>
                            </a>
                            {!! Form::button('<i class="far fa-trash-alt"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                        </div>
                        {!! Form::close() !!}
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>

    <div class="card-footer clearfix">
        <div class="float-right">
            @include('adminlte-templates::common.paginate', ['records' => $aboutuses])
        </div>
    </div>
</div>
