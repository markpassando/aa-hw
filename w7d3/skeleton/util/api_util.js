export const fetchSearchGiphys = (query) => {
  return $.ajax({
    method: 'GET',
    url: `http://api.giphy.com/v1/gifs/search?q=${query}&api_key=dc6zaTOxFJmzC&limit=2`
  });
};
