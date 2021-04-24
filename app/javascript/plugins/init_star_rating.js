import "jquery-bar-rating";
import $ from 'jquery';

const initStarRating = () => {
  // TODO
  $("#mood_rating").barrating({
    theme: "css-stars"
  });
};

export { initStarRating };