<template>
  <div class="row">
    <div v-bind:class="{ hideSpinner: hideSpinner }" class="align-spinner">
      <md-progress-spinner md-mode="indeterminate"></md-progress-spinner>
    </div>
    <div class="filter-section" v-if="hideSpinner">
        <div class="md-layout">
            <div class="md-layout-item">
                <md-autocomplete
                    v-model="category"
                    :md-options="categories"
                    md-layout="box"
                    md-dense
                    v-on:click="fetchItems(category)"
                >
                <label>Enter specialisation...</label>
                </md-autocomplete>
            </div>
            <div class="md-layout-item">
                <md-button class="md-raised md-primary" style="height:46px;" @click="fetchItems()">Search</md-button>
            </div>
        </div>
     <!-- <md-content>
        <md-chip
          @click="fetchItems(chip)"
          class="md-primary"
          v-for="chip in categories"
          :key="chip"
          md-clickable
        >{{ chip }}</md-chip>
      </md-content>-->
    </div>
    <div v-bind:key="item.id" v-for="item in items" class="col-lg-12 col-md-12 col-sm-12">
      <md-card md-with-hover class="card-background">
        <md-ripple>
          <md-card-header>
            <div class="md-title">Dr. {{item.first_name}} {{item.middle_name}} {{item.last_name}}</div>
            <div>
              <md-chip class="md-primary">{{item.specialisation}}</md-chip>
            </div>
          </md-card-header>

          <md-card-content>
            <div class="md-subhead">{{item.address}}, {{item.city}}</div>
            <div class="md-subhead">{{item.email}}</div>
          </md-card-content>

          <md-card-actions md-alignment="left">
            <md-button v-if="item.phone2">
              <a :href="`tel:${item.phone2}`">{{item.phone2}}</a>
            </md-button>
            <md-button v-if="item.phone1">
              <a :href="`tel:${item.phone1}`">{{item.phone1}}</a>
            </md-button>
          </md-card-actions>
        </md-ripple>
      </md-card>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      hideSpinner: false,
      items: [],
      categories: [],
      category: ''
    };
  },

  created: function() {
    this.fetchCategories();
    this.fetchItems("ALL");
  },

  methods: {
    fetchItems() {
        if(this.category == ''){
            this.category = 'All';
        }
      let formData = new FormData();
      formData.append("action", "GET_ALL");
      formData.append("category", this.category);
      let uri = "http://api.skillsapphire.com/infoways.php";
      //let uri = "http://localhost/infoapps/infoways.php";
      this.axios
        .post(uri, formData, {
          headers: { "Content-Type": "application/x-www-form-urlencoded" }
        })
        .then(response => {
          this.items = response.data;
          this.hideSpinner = true;
        });
    },
    fetchCategories() {
      let formData = new FormData();
      formData.append("action", "GET_ALL_CAT");
      let uri = "http://api.skillsapphire.com/infoways.php";
      //let uri = "http://localhost/infoapps/infoways.php";
      this.axios
        .post(uri, formData, {
          headers: { "Content-Type": "application/x-www-form-urlencoded" }
        })
        .then(response => {
          this.categories = response.data;
        });
    }
  }
};
</script>
<style scoped>
.align-spinner {
  margin-left: auto;
  margin-right: auto;
  margin-top: 60px;
}
.hideSpinner {
  display: none;
}
.filter-section {
  margin: 10px 0px 0px 15px;
}
.card-background {
  margin-bottom: 10px;
}
</style>