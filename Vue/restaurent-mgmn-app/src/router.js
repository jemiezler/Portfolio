import home from './components/home.vue'
import signup from './components/signup.vue'
import signin from './components/signin.vue'
import {createRouter, createWebHistory} from 'vue-router'


const routes= [
    {
        name:'home',
        component:home,
        path:'/'
    },{
        name:'signup',
        component:signup,
        path:'/signup'
    },{
        name:'signin',
        component:signin,
        path:'/signin'
    }
];

const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router;
