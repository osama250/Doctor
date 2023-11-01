<?php

namespace App\Http\Controllers\AdminPanel;

use App\Http\Requests\AdminPanel\CreateAboutUsRequest;
use App\Http\Requests\AdminPanel\UpdateAboutUsRequest;
use App\Http\Controllers\AppBaseController;
use App\Repositories\AboutUsRepository;
use Illuminate\Http\Request;
use Flash;

class AboutUsController extends AppBaseController
{
    /** @var AboutUsRepository $aboutUsRepository*/
    private $aboutUsRepository;

    public function __construct(AboutUsRepository $aboutUsRepo)
    {
        $this->aboutUsRepository = $aboutUsRepo;
        $this->middleware('permission:View Aboutus|Add Aboutus|Edit Aboutus|Delete Aboutus', ['only' => ['index', 'store']]);
        $this->middleware('permission:Add Aboutus', ['only' => ['create', 'store']]);
        $this->middleware('permission:Edit Aboutus', ['only' => ['edit', 'update']]);
        $this->middleware('permission:Delete Aboutus', ['only' => ['destroy']]);
    }

    public function index(Request $request)
    {
        $aboutus = $this->aboutUsRepository->paginate(10);
        return view('AdminPanel.aboutus.index' , get_defined_vars() );
    }

    public function create()
    {
        return view('AdminPanel.aboutus.create');
    }

    public function store(CreateAboutUsRequest $request)
    {
        $input      = $request->all();
        $aboutUs    = $this->aboutUsRepository->create($input);
        return redirect(route('aboutus.index'))->with(__('lang.created'));

    }

    public function show($id)
    {
        $aboutUs = $this->aboutUsRepository->find($id);
        return view('aboutus.show')->with('aboutUs', $aboutUs);
    }

    public function edit($id)
    {
        $about = $this->aboutUsRepository->find($id);
        return view('AdminPanel.aboutus.edit' , get_defined_vars() );
    }

    public function update($id, UpdateAboutUsRequest $request)
    {
        $aboutUs = $this->aboutUsRepository->find($id);
        $aboutUs = $this->aboutUsRepository->update($request->all(), $id);
        return redirect(route('aboutus.index'));
    }


    public function destroy($id)
    {
        $aboutUs = $this->aboutUsRepository->find($id);
        $this->aboutUsRepository->delete($id);
        return redirect(route('aboutus.index'));
    }
}
