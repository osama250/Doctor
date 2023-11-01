<!--begin::Table-->
<table id="kt_datatable_dom_positioning" class="table table-striped table-row-bordered gy-5 gs-7 border rounded">
    <!--begin::Thead-->
    <thead>
        <tr class="fw-6 fw-semibold text-gray-600">
            <th class="min-w-250px">{{ __('lang.title') }}</th>
            <th class="min-w-250px">{{ __('lang.content') }}</th>
            <th class="min-w-250px">{{ __('lang.media') }}</th>
            <th class="min-w-150px">{{ __('lang.acti') }}</th>
        </tr>
    </thead>
    <!--end::Thead-->
    <!--begin::Tbody-->
    <tbody>
        @foreach ($decks as $deck)
            <tr>
                <td>
                    <span class="badge badge-light-success fs-7 fw-bold">{{ $deck->title }}</span>
                </td>
                <td>
                    <span class="fs-7 fw-bold">{{ $deck->content }}</span>
                </td>
                <td>
                    <span class="badge badge-light-success fs-7 fw-bold cursor-pointer symbol symbol-35px">
                        {{-- @if($deck->type=='image') --}}
                            {{-- <img onerror="this.onerror=null;this.src='{{asset('assets/stock/svg/files/blank-image.svg')}}'" src="{{$deck->file}}" class="rounded-3" a> --}}
                            <img src="{{ $deck->file }}" alt="" width="250px" height="250px"> <br>
                            {{-- @else --}}
                            {{-- <video id='video' width="100" height="125" controls>
                                <source src='{{$deck->file}}' ></source>
                            </video> --}}
                        {{-- @endif --}}

                    </span>
                </td>
                <td>
                    @if(auth()->user()->can('Edit Decks'))
                        <a href="{{ route('decks.edit', $deck->id) }}" class="btn btn-sm btn-light me-2">
                        <i class="bi bi-pencil-square"></i>
                        </a>
                    @endif
                    @if(auth()->user()->can('Delete Decks'))
                        <form method="POST" action="{{ route('decks.destroy', $deck->id) }}"
                        style="display: inline">
                        @csrf
                        @method('delete')
                        <button type="submit" class="btn btn-sm btn-danger me-2">
                            <i class="bi bi-file-x-fill"></i>
                        </button>
                        </form>
                    @endif

                </td>
            </tr>
        @endforeach
    </tbody>
    <!--end::Tbody-->
</table>
<!--end::Table-->




<script>
    $(document).ready(function() {
        $('#kt_datatable_dom_positioning').dataTable({
            "searching": true,
            "ordering": true,
            responsive: true,
        });
    });
</script>
