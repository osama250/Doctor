<div class="row mb-3">
    <!--begin::Label-->
    <label class="col-lg-4 col-form-label required fw-semibold fs-6">{{ __('lang.media') }}</label>
            <div class="col-lg-8">
                <!--begin::Row-->
                <div class="row">
                    <select id="myselect"  class="form-control form-control-lg form-control-solid mb-3 mb-lg-0 ">
                        <option value=""> Choose </option>
                        <option value="video"> Url Video  </option>
                        <option value="photo"> Photo </option>
                    </select>
                </div>
            </div>
  </div>

    </div>

        <div class="row mb-3" style="display: none" id="video">
            <!--begin::Label-->
            <label class="col-lg-4 col-form-label required fw-semibold fs-6">{{ __('lang.url') }}</label>
            <!--end::Label-->

            <!--begin::Col-->
            <div class="col-lg-8">
                <!--begin::Row-->
                <div class="row">
                    <!--begin::Col-->
                    <div class="col-lg-12 fv-row fv-plugins-icon-container">
                        <input type='text' name="url"
                            class="form-control form-control-lg form-control-solid mb-3 mb-lg-0 "
                            placeholder="{{ __('lang.url') }}" value="{{isset($overview) ? $overview->url : '' }}">
                        <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback">
                        </div>
                    </div>
                    <!--end::Col-->
                </div>
                <!--end::Row-->
            </div>
            <!--end::Col-->
        </div>

         <!--begin::Input group-->
        <div class="fv-row mb-10 fv-plugins-icon-container" style="display: none" id="photo">
            <!--begin::Label-->
            <label class="d-block fw-semibold fs-6 mb-5">
                <span class="required">{{__('lang.media')}}</span>
            </label>
            <!--end::Label-->
            <!--begin::Image input placeholder-->
            <style>
                .image-input-placeholder {
                    background-image: url({{asset('assets/media/svg/files/blank-image.svg')}});
                }

                [data-bs-theme="dark"] .image-input-placeholder {
                    background-image: url({{asset('assets/media/svg/files/blank-image-dark.svg')}});
                }
            </style>
            <!--end::Image input placeholder-->
            <!--begin::Image input-->
            <div class="image-input image-input-empty image-input-outline image-input-placeholder" data-kt-image-input="true">
                <!--begin::Preview existing avatar-->
                <div class="image-input-wrapper w-125px h-125px" @isset( $overview->photo )
                    {{-- style='background-image:url({{asset('images/'.$deck->file)}})' @endisset> --}}
                    style='background-image:url( {{ $overview->photo }} )' @endisset>
                </div>
                 {{--  --}}
                <label class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                    data-kt-image-input-action="change" data-bs-toggle="tooltip" aria-label="Change avatar"
                    data-bs-original-title="Change avatar" data-kt-initialized="1">
                    <i class="ki-duotone ki-pencil fs-7">
                        <span class="path1"></span>
                        <span class="path2"></span>
                    </i>
                    <!--begin::Inputs-->
                    <input type="file" id="media" name="photo" accept=".png, .jpg, .jpeg, .mp4 ,.auv">
                    <input type="hidden" name="avatar_remove">
                    <!--end::Inputs-->
                </label>
                <!--end::Label-->
                <!--begin::Cancel-->
                <span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                    data-kt-image-input-action="cancel" data-bs-toggle="tooltip" aria-label="Cancel avatar"
                    data-bs-original-title="Cancel avatar" data-kt-initialized="1">
                    <i class="ki-duotone ki-cross fs-2">
                        <span class="path1"></span>
                        <span class="path2"></span>
                    </i>
                </span>
                <!--end::Cancel-->
                <!--begin::Remove-->
                <span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                    data-kt-image-input-action="remove" data-bs-toggle="tooltip" aria-label="Remove avatar"
                    data-bs-original-title="Remove avatar" data-kt-initialized="1">
                    <i class="ki-duotone ki-cross fs-2">
                        <span class="path1"></span>
                        <span class="path2"></span>
                    </i>
                </span>
                <!--end::Remove-->
            </div>
            <!--end::Image input-->
            <!--begin::Hint-->
            <div class="form-text">{{__('lang.allowedslidertypes')}}</div>
            <!--end::Hint-->
            <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div>
        </div>
        <!--end::Input group-->
</div>

<script>
    let select = document.getElementById('myselect');
    let photo  = document.getElementById('photo');
    let video  = document.getElementById('video');

    select.addEventListener('change', function() {
            if ( select.value == 'video' ) {
                console.log(  select.value );
                photo.style.display = 'none';
                video.style.display = 'block';
            }
            else if ( select.value == 'photo' ) {
                console.log(  select.value );
                photo.style.display = 'block';
                video.style.display = 'none';
            } else {
                console.log(  "No chose: ") ;
                video.style.display = 'none';
                photo.style.display = 'none';
            }
        });
</script>
