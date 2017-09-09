<?php

namespace App\Http\Controllers;

use App\TienIch;
use Illuminate\Http\Request;

class TienIchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $tienichs = TienIch::orderBy('id', 'DESC')->paginate(5);
        return view('backend.admin.config.tienich.index', compact('tienichs'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.admin.config.tienich.create', compact('roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $tienich = new TienIch();
        $tienIchImage = $request->input('tienich_image');
        $tienIchContent = $request->input('tienich_content');
        $tienIchOrder = $request->input('tienich_order');
        $tienichIsActive=$request->input('tienich_is_active');
        if($tienichIsActive){
            $tienich->tienich_is_active=1;
        }else{
            $tienich->tienich_is_active=0;
        }
        if($tienIchOrder){
            $tienich->tienich_order = $tienIchOrder;
        }else{
            $tienich->tienich_order = 1;
        }
        $tienIchImage = substr($tienIchImage, strpos($tienIchImage, 'images'), strlen($tienIchImage) - 1);
        $tienich->tienich_image = $tienIchImage;
        $tienich->tienich_content=$tienIchContent;
        $tienich->save();
        return redirect()->route('config.tienich.index')
            ->with('success', 'Thêm Tiện Ích Thành Công');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $tienich = TienIch::find($id);
        return view('backend.admin.config.tienich.edit', compact('tienich'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $tienich = TienIch::find($id);
        $tienIchImage = $request->input('tienich_image');
        $tienIchContent = $request->input('tienich_content');
        $tienIchOrder = $request->input('tienich_order');
        $tienichIsActive=$request->input('tienich_is_active');
        if($tienIchOrder){
            $tienich->tienich_order = $tienIchOrder;
        }else{
            $tienich->tienich_order = 1;
        }
        if($tienichIsActive){
            $tienich->tienich_is_active=1;
        }else{
            $tienich->tienich_is_active=0;
        }
        $tienIchImage = substr($tienIchImage, strpos($tienIchImage, 'images'), strlen($tienIchImage) - 1);
        $tienich->tienich_image = $tienIchImage;
        $tienich->tienich_content=$tienIchContent;
        $tienich->save();
        return redirect()->route('config.tienich.index')
            ->with('success', 'Cập Nhật Thành Công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
