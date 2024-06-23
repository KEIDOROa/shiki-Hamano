$(function(){
  $('.toggle_btn').on('click', function() {
      if ($('#header').hasClass('open')) {
          $('#header').removeClass('open');
      } else {
          $('#header').addClass('open');
      }
  });
  $('#mask').on('click', function() {
      $('#header').removeClass('open');
  });
});

$(function(){
  const tabs = document.querySelectorAll('.videobar li');
    const videos = document.querySelectorAll('.video li');

    tabs.forEach(tab => {
        tab.addEventListener('click', () => {
            const videoId = tab.getAttribute('data-video');

            tabs.forEach(t => t.classList.remove('active'));
            videos.forEach(v => v.classList.remove('active'));

            tab.classList.add('active');
            document.querySelector(`.video li[data-video="${videoId}"]`).classList.add('active');
        });
    });
});