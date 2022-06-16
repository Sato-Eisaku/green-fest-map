<template>
  <!-- アプリ全体をダークモードにする -->
  <v-app dark>
    <v-app-bar
      color="light-green"
      dark
      dence
      collapse-on-scroll
      app
    >
      <!-- グリッドレイアウトに挑戦 -->
      <v-container>
        <!-- 上下を中央揃えに -->
        <v-row class="align-center">
          <!-- ハンバーガーアイコンを左寄せにしたい（できなかった） -->
          <v-col cols="1">
            <v-app-bar-nav-icon @click="drawer = true" />
          </v-col>
          <v-col cols="10">
            <v-toolbar-title class="flex text-center">
              緑丘祭非公式アプリ
            </v-toolbar-title>
          </v-col>
          <!-- タイトルを中央にするため、右にも1マス -->
          <v-col cols="1" />
        </v-row>
      </v-container>
    </v-app-bar>
    <v-main>
      <v-container>
        <Nuxt />
      </v-container>
    </v-main>
    <!-- ハンバーガーメニューの中身 -->
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
          <!-- 各メニューをループで作成 -->
          <v-list-item v-for="item in naviItems" :key="item.title">
            <v-list-item-icon>
              <v-icon>{{ item.icon }}</v-icon>
            </v-list-item-icon>
            <v-list-item-title>{{ item.title }}</v-list-item-title>
          </v-list-item>
        </v-list-item-group>
      </v-list>
    </v-navigation-drawer>
  </v-app>
</template>

<script>
export default {
  name: 'DefaultLayout',
  data () {
    return {
      drawer: false,
      group: null,
      naviItems: [
        {
          icon: 'mdi-map-search',
          title: 'マップ'
        },
        {
          icon: 'mdi-store-search',
          title: '出店情報'
        },
        {
          icon: 'mdi-calendar-search',
          title: 'イベント'
        },
        {
          icon: 'mdi-twitter',
          title: '公式Twitter'
        },
        {
          icon: 'mdi-instagram',
          title: '公式Instagram'
        }
      ]
    }
  }
}
</script>
