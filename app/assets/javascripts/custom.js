$('#betaTester')
   .on('shown.bs.modal', function() {
       console.log('hi');
   })
   .on('hide.bs.modal', function() {
       console.log('hide');
   })
   .on('hidden.bs.modal', function(){
       console.log('hidden');
   }).modal('show')