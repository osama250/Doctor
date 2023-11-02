<?php

namespace App\Http\Controllers\AdminPanel;

use App\Http\Requests\AdminPanel\CreateServiceRequest;
use App\Http\Requests\AdminPanel\UpdateServiceRequest;
use App\Http\Controllers\AppBaseController;
use App\Repositories\ServiceRepository;
use Illuminate\Http\Request;
use App\Models\Service;
use Flash;

class ServiceController extends AppBaseController
{
    /** @var ServiceRepository $serviceRepository*/
    private $serviceRepository;

    public function __construct(ServiceRepository $serviceRepo)
    {
        $this->serviceRepository = $serviceRepo;
        $this->middleware('permission:View Service|Add Service|Edit Service|Delete Service', ['only' => ['index', 'store']]);
        $this->middleware('permission:Add Service', ['only' => ['create', 'store']]);
        $this->middleware('permission:Edit Service', ['only' => ['edit', 'update']]);
        $this->middleware('permission:Delete Service', ['only' => ['destroy']]);
    }

    public function index(Request $request)
    {
        // $services = $this->serviceRepository->paginate(10);
        $services = Service::all();
        return view('AdminPanel.services.index' , get_defined_vars() );
    }

    public function create()
    {
        return view('AdminPanel.services.create');
    }

    public function store(CreateServiceRequest $request)
    {
        $input      = $request->all();
        $service    = $this->serviceRepository->create($input);
        return redirect(route('services.index'))->with('success', __('lang.created') );
    }

    // public function show($id)
    // {
    //     $service = $this->serviceRepository->find($id);
    //     return view('services.show')->with('service', $service);
    // }

    public function edit($id)
    {
        // return $id;
        $service = $this->serviceRepository->find($id);
        return view('AdminPanel.services.edit' , get_defined_vars() );
    }


    public function update($id, UpdateServiceRequest $request)
    {
        $service = $this->serviceRepository->find($id);
        $service = $this->serviceRepository->update($request->all(), $id);
        return redirect(route('services.index'))->with('success', __('lang.created') );
    }

    public function destroy($id)
    {
        $service = $this->serviceRepository->find($id);
        $this->serviceRepository->delete($id);
        return redirect(route('services.index'));
    }
}
