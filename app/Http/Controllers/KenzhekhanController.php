<?php

namespace App\Http\Controllers;

use App\Exports\KenzhekhanExport;
use App\Exports\ProductExport;
use App\Models\Country;
use App\Http\Requests\KenzhekhanRequest;
use App\Models\Kenzhekhan;
use App\Models\ProductCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Maatwebsite\Excel\Facades\Excel;
use Nette\Utils\Random;

class KenzhekhanController extends Controller
{
    public function index()
    {
        $kenzhekhan = Kenzhekhan::paginate(25);
        $data = [
            'kenzhekhan' => $kenzhekhan
        ];

        return view('inventory.kenzhekhan.index', $data);
    }
    public function create()
    {
        $categories = ProductCategory::all();
        $countries = Country::all();
        return view('inventory.kenzhekhan.create', compact('categories', 'countries'));
    }

    public function store(KenzhekhanRequest $request, Kenzhekhan $model)
    {
        $uploadFile = $request->file('image');
        $filename = 'kenzhekhan_'.Str::random(8).'.'.$uploadFile->extension();
        $path = '';
        $uploadFile->storeAs($path, $filename,'uploads');
        $model = new Kenzhekhan();
        $model->name = $request->name;
        $model->description = $request->description;
        $model->product_category_id = $request->product_category_id;
        $model->price = $request->price;
        $model->stock = $request->stock;
        $model->stock_defective = $request->stock_defective;
        $model->country = $request->country;
        $model->availability = $request->availability;
        $model->product_code=$request->product_code;
        $model->usage=$request->usage;
        $model->weight=$request->weight;
        $model->image = $path.'/'.$filename;
        $model->save([$model]);
        return redirect()
            ->route('kenzhekhan.index')
            ->withStatus('Product successfully registered.');
    }
    public function update(KenzhekhanRequest $request, Kenzhekhan $kenzhekhan)
    {
        $request->validate([
            'name' => 'required',
            'description' => 'required',
            'product_category_id' => 'required',
            'price' => 'required',
            'stock' => 'required',
            'stock_defective' => 'required',
            'image' => 'required',
            'country'=>'required',
            'availability'=>'required',
            'weight'=>'required',
            'product_code'=>'required',
            'usage'=>'required',
        ]);
        $uploadFile = $request->file('image');
        $filename = 'kenzhekhan_'.Str::random(8).'.'.$uploadFile->extension();
        $path = '';
        $uploadFile->storeAs($path, $filename,'uploads');
        $kenzhekhan->update($request->all());
        $kenzhekhan->image = $path.'/'.$filename;
        $kenzhekhan->save([$kenzhekhan]);

        return redirect()
            ->route('kenzhekhan.index')
            ->withStatus('Product updated successfully.');

    }

    public function edit(Kenzhekhan $kenzhekhan)
    {
        $categories = ProductCategory::all();
        $countries = Country::all();
        return view('inventory.kenzhekhan.edit', compact('kenzhekhan', 'categories', 'countries'));
    }
    public function show(Kenzhekhan $kenzhekhan)
    {
        $solds = $kenzhekhan->solds()->latest()->limit(25)->get();
        $receiveds = $kenzhekhan->receiveds()->latest()->limit(25)->get();

        return view('inventory.kenzhekhan.show', compact('kenzhekhan', 'solds', 'receiveds'));
    }

    public function export()
    {
        $nick_name = Random::generate(6).'_'.'Кенжехан.xlsx';
        return Excel::download(new KenzhekhanExport, $nick_name);
    }

    public function destroy(Kenzhekhan $kenzhekhan)
    {
        $kenzhekhan->delete();

        return redirect()
            ->route('kenzhekhan.index')
            ->withStatus('Product removed successfully.');
    }
}
