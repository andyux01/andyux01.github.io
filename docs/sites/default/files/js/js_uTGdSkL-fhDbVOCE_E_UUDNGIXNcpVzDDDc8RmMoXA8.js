/* @license GNU-GPL-2.0-or-later https://www.drupal.org/licensing/faq */
function alpineTodo(init_data){return {items:init_data.items||[],showForm:{},addText:'',swap:function(from,to){var swap=this.items[to];this.items[to]=this.items[from];this.items[from]=swap;},addItem:function(){this.items.push({id:Math.random().toString(36).substr(2,9),text:this.addText});this.addText='';},update:function(){fetch(init_data.updateUrl,{method:'POST',body:JSON.stringify(this.items)});}};};
