<template>
  <div>
    <md-toolbar class="md-primary header-background">
      <span class="md-title"><router-link style="color: #fff;" :to="{ name: 'Listing' }" class="nav-link">Doctors</router-link></span>
      <span class="md-title"><router-link style="color: #fff;" :to="{ name: 'About' }" class="nav-link">About</router-link></span>
      <span class="md-title"><router-link style="color: #fff;" :to="{ name: 'Contact' }" class="nav-link">Contact</router-link></span>
    </md-toolbar>
    <router-view></router-view>
  </div>
</template>

<script>

export default {
}
</script>

<style >
    .header-background{
      position: sticky;
    }
</style>