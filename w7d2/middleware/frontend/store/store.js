import { createStore, applyMiddleware } from 'redux';
import RootReducer from '../reducers/root_reducer';

const addLoggingToDispatch = store => next => action => {
  console.log(store.getState());
  console.log(action);
  next(action);
  console.log(store.getState());
}

const somethingCool = store => next => action => {
  console.log("This is something cool but does nothing");
}

const configureStore = (preloadedState = {}) => {
  const store = createStore(RootReducer, preloadedState,

    applyMiddleware(addLoggingToDispatch, somethingCool)
  );
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
}

export default configureStore;
