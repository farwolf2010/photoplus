# photoplus组件

相机相册高级版
 
使用前：请先添加插件
```
weexplus plugin add farwolf2010/photoplus
```

![](/shot.gif)
### 用法
``` javascript
	<template>
    <div style="align-items: center;justify-content: center">
        <button @click="open"></button>
        <button @click="upload" text="上传" style="margin-top: 50px"></button>
        <image style="width: 200px;height: 300px;background-color: red" :src="src"></image>
        <video style="width: 200px;height: 300px;background-color: blue" :src="video"></video>
    </div>
</template>
<script>
    export default{
        props: {},
        data(){
            return {
                src:'',
                video:''
            }
        },
        methods: {
            upload(){
                let plus=weex.requireModule('photoplus')
                //type:   video,photo
                //action:  camera 相机 ；choose:相册
                plus.open({type:'photo','action':'choose'},(res)=>{
//                    this.video=res.res[0].path
//                    this.src=res.res[0].path
                    this.src=res.res[0].path
                    var param={};
                    var path={};
                    path.file=res.res[0].path
                    var net=weex.requireModule("net");
                    var process=weex.requireModule("process");
//                    net.postFile('https://b.kuaidimao.com/xapi/ocr_tel',param,{},path,()=>{
                    net.postFile('http://59.110.169.246/movie/imgupload.do',param,{},path,()=>{
                        //start
//                        process.show()
                    },(e)=>{
                        //succcess
                        var modal=weex.requireModule("modal")
                        modal.toast({message:'上传成功！'})
                        this.log(e)
                    },()=>{
                        //compelete
//                        process.dismiss()
                    },()=>{
                        //exception
                        var modal=weex.requireModule("modal")
                        modal.toast({message:'上传异常！'})
                    })
                })
            },
            open(){
                let plus=weex.requireModule('photoplus')
                //type:   video,photo
                //action:  camera 相机 ；choose:相册
                plus.open({type:'video','action':'choose'},(res)=>{
                     this.video=res.res[0].path
                     this.src=res.res[0].path
                })
            },
            onLoad(p){

            }
        },
        created(){

        }
    }
</script>
<style scoped>

</style>
</script>
<style scoped>

</style>
```


 

