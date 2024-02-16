<template>
    <div>
        <h1>Hello bro,</h1>
    </div>
</template>
<script>
    export default{
        name: 'home',
        mounted(){
            let user = localStorage.getItem('user-info');
            if(!user){
                this.$router.push({name:'signin'}).then(() => {
                    window.location.reload();
                })
            }
        }
    }
</script>