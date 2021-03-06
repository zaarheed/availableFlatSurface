import {
  combineReducers
} from 'redux';
import {
  usersReducer
} from './users/usersReducers';
import {
  restaurantReducer,
} from './restaurants/restaurantReducer';
import {
  reviewsReducer
} from './reviews/reviewsReducer';
import {
  reservationsReducer
} from './reservations/reservationsReducer';
import {
  savedRestaurantsJoinReducer
} from './savedRestaurantsJoin/savedRestaurantsJoinReducer';

const entitiesReducer = combineReducers({
  restaurants: restaurantReducer,
  savedRestaurantsJoin: savedRestaurantsJoinReducer,
  reviews: reviewsReducer,
  users: usersReducer,
  reservations: reservationsReducer,
});

export default entitiesReducer;