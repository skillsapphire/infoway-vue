<template>
    <div class="row">
        <div v-bind:key="item.id" v-for="item in items" class="col-lg-12 col-md-12 col-sm-12">
            <div class="card-iw">
                <div class="container-iw">
                    <p>
                        <span class="text-header">Name </span>
                        <span class="text-content">Dr. {{item.first_name}} {{item.middle_name}} {{item.last_name}}</span>
                    </p> 
                    <p v-if="item.specialisation">
                        <span class="text-header">Specialisation </span>
                        <span class="text-content">{{item.specialisation}}</span>
                    </p>
                    <p v-if="item.category">
                        <span class="text-header">Category </span>
                        <span class="text-content">{{item.category}}</span>
                    </p>
                    <p v-if="item.phone1">
                        <span class="text-header">Mobile </span>
                        <span class="text-content">
                            <a href="tel:item.phone1">{{item.phone1}}</a>
                        </span>
                    </p>
                    <p v-if="item.phone2">
                        <span class="text-header">Mobile </span>
                        <span class="text-content">
                            <a href="tel:item.phone2">{{item.phone2}}</a>
                        </span>
                    </p>
                    <p v-if="item.email">
                        <span class="text-header">Email </span>
                        <span class="text-content">{{item.email}}</span>
                    </p>
                    <p v-if="item.address">
                        <span class="text-header">Address </span>
                        <span class="text-content">{{item.address}}, {{item.city}}</span>
                    </p>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
        data(){
            return{
                items: []
            }
        },

        created: function()
        {
            this.fetchItems();
        },

        methods: {
            fetchItems()
            {
              let formData = new FormData();
              formData.append('action', 'GET_ALL');
              let uri = 'http://localhost/infoapps/infoways.php';
              this.axios.post(uri, formData, { headers: {'Content-Type' : 'application/x-www-form-urlencoded'}
            }).then((response) => {
                  this.items = response.data;
                  console.log(this.items);
              });
            }
        }
    }
</script>
<style lang="stylus" scoped>
.card-iw {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 100%;
  border-radius :10px;
}

.card-iw:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container-iw {
  padding: 4px 16px;
  margin-top: 5px;
}

.text-header{
    font-size: 12px;
    color : #b5b5b5;
    font-weight: bold;
    margin-right: 4px;
    line-height : 1.2px;
}
.text-content{
    font-size: 12px;
}
.container-iw p{
    margin: 2px;
}
</style>