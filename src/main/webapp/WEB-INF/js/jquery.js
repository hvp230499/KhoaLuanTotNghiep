$(function() {
    // Multiple images preview in browser
    let imagesPreview = function(input, placeToInsertImagePreview) {

        if (input.files) {
            let filesAmount = input.files.length;
            if(filesAmount>0)
                $(placeToInsertImagePreview).empty();
            for (i = 0; i < filesAmount; i++) {
                let reader = new FileReader();

                reader.onload = function(event) {
                  let img = document.createElement('img');
                  img.setAttribute('src', event.target.result);
                  img.setAttribute('with', '200px');
                  img.setAttribute('height', '150px');
                  img.setAttribute('class', 'mr-1');
                  $(placeToInsertImagePreview).append(img);
                }
                reader.readAsDataURL(input.files[i]);
            }
        }

    };

    $('#file').on('change', function() {
        imagesPreview(this, '#img');
    });
});
