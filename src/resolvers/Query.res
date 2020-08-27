// let categories = (parent, args, ctx, info) => {
//     switch(ctx.prisma){
//         | Some(v)=> {
//             v.t_WIKI_CATG1.findMany();
//         }
//         | None => {
//             Js.log('None!');
//         }
//     }
//     ctx.prisma.t_WIKI_CATG1.findMany();
// }
let categories = (context) => {
    Js.log("categories");
}