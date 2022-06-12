<template>
  <v-app dark>
    <v-app-bar
      color="light-green"
      dark
      dence
      collapse-on-scroll
      app
    >
      <v-container>
        <v-row class="align-center">
          <v-col cols="1"><v-app-bar-nav-icon @click="drawer = true" /></v-col>
          <v-col cols="10"><v-toolbar-title class="flex text-center">緑丘祭非公式アプリ</v-toolbar-title></v-col>
          <v-col cols="1" />
        </v-row>
      </v-container>
    </v-app-bar>
    <v-main>
      <v-container>
        <Nuxt />
      </v-container>
    </v-main>
    <v-navigation-drawer
      v-model="drawer"
      absolute
      light
      temporary
    >
      <v-list
        nav
        dense
      >
        <v-list-item-group
          v-model="group"
          active-class="deep-purple--text text--accent-4"
        >
          <v-list-item>
            <v-list-item-icon>
              <v-icon>mdi-map-search</v-icon>
            </v-list-item-icon>
            <v-list-item-title>マップ</v-list-item-title>
          </v-list-item>

          <v-list-item>
            <v-list-item-icon>
              <v-icon>mdi-store-search</v-icon>
            </v-list-item-icon>
            <v-list-item-title>出店情報</v-list-item-title>
          </v-list-item>

          <v-list-item>
            <v-list-item-icon>
              <v-icon>mdi-calendar-search</v-icon>
            </v-list-item-icon>
            <v-list-item-title>イベント</v-list-item-title>
          </v-list-item>

          <v-list-item>
            <v-list-item-icon>
              <v-icon>mdi-twitter</v-icon>
            </v-list-item-icon>
            <v-list-item-title>公式Twitter</v-list-item-title>
          </v-list-item>

          <v-list-item>
            <v-list-item-icon>
              <v-icon>mdi-instagram</v-icon>
            </v-list-item-icon>
            <v-list-item-title>公式Instagram</v-list-item-title>
          </v-list-item>
        </v-list-item-group>
      </v-list>
    </v-navigation-drawer>
    <v-footer
      :absolute="!fixed"
      app
    >
      <span>&copy; {{ new Date().getFullYear() }}</span>
    </v-footer>
  </v-app>
</template>

<script>
export default {
  name: 'DefaultLayout',
  data () {
    return {
      clipped: false,
      drawer: false,
      fixed: false,
      items: [
        {
          icon: 'mdi-apps',
          title: 'Welcome',
          to: '/'
        },
        {
          icon: 'mdi-chart-bubble',
          title: 'Inspire',
          to: '/inspire'
        }
      ],
      miniVariant: false,
      right: true,
      rightDrawer: false,
      title: 'Vuetify.js'
    }
  }
}
</script>
