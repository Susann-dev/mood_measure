import "jquery-bar-rating";


const initStarRating = () => {
  $('#mood_rating').barrating({
    theme: 'css-stars'
  });
};

export { initStarRating };