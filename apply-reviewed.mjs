import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync} from 'node:fs';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
assert.equal(execFileSync('calcit',['-v'],{encoding:'utf8'}).trim(),'0.30.1');
const run=(...a)=>execFileSync('calcit',['calcit.cirru',...a],{encoding:'utf8',maxBuffer:48e6,stdio:['ignore','pipe','pipe']});
const blob=()=>execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}).trim();
assert.equal(blob(),'1e31855c18fe8fccf984377e4e5889087b9a315c');
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const q=(...a)=>norm(JSON.parse(run('query',...a,'--format','json')).data);
const input=JSON.parse(readFileSync('reviewed.json','utf8'));
const before={config:norm(input.config.data),namespaces:input.namespaces.map(x=>norm(x.data)),defs:input.definitions.map(x=>norm(x.data))};
assert.equal(before.defs.length,31);assert.equal(before.defs.reduce((n,d)=>n+d.tests.length+d.examples.length,0),0);
assert.deepEqual(q('config'),before.config);assert.deepEqual(q('ns').namespaces.map(n=>q('ns',n)),before.namespaces);
for(const d of before.defs)assert.deepEqual(q('def',d.id),d);
const expected=structuredClone(before),ops=[],sites=[],counts={countToLen:0,unwrapOr:0,unwrap:0,unaryMerge:0,css:0,domContract:0,eventSchema:0};
const show=(id,path)=>JSON.parse(run('tree','show',id,'--path','@'+path.join('.'),'--format','json')).tree;
const replace=(id,path,value)=>ops.push(['tree','replace',id,'--path','@'+path.join('.'),'--input-format','json-ast','--code',JSON.stringify(value)]);
const event=['::',"'Map","'Tag","'Dynamic"],dispatch=['::',"'Fn",['{}',[':rest',"'Dynamic"],[':return',"'Unit"],[':args',['[]',"'Dynamic"]]]];
const hint=['hint-fn',['{}',[':return',"'Unit"],[':args',['[]',event,dispatch]]]];
const lengths=new Set([':font-size',':right',':bottom',':width',':padding-bottom']);
const keywords=new Set([':font-style',':color',':position',':cursor',':overflow',':border',':outline',':background-color',':resize',':white-space',':text-overflow']);
function walk(x,path,id){
  if(!Array.isArray(x)||['quote','quasiquote','comment',';','defmacro'].includes(x[0]))return x;
  const original=structuredClone(x),unaryMerge=x[0]==='merge';
  if(['count','option:unwrap-or','option:unwrap'].includes(x[0])){
    assert.deepEqual(show(id,path),original);const old=x[0];
    if(old==='count'){
      assert.ok((id==='app.comp.container/comp-container'&&x[1]==='drafts')||(id==='app.updater/updater'&&x[1]==='empty-drafts'));
      counts.countToLen++;
    }else if(old==='option:unwrap-or')counts.unwrapOr++;else counts.unwrap++;
    const next={count:'.len','option:unwrap-or':'.unwrap-or','option:unwrap':'.unwrap'}[old];replace(id,[...path,0],next);x[0]=next;sites.push({id,path,original,replacement:next});
  }
  if(x[0]==='{}')for(let j=1;j<x.length;j++){
    const pair=x[j];if(!Array.isArray(pair)||pair.length!==2)continue;
    const [k,v]=pair;let next;
    if(typeof v==='string'&&/^\d+$/.test(v)&&lengths.has(k))next='|'+v+'px';
    else if(typeof v==='string'&&v.startsWith(':')&&keywords.has(k))next='|'+v.slice(1);
    if(next!==undefined){assert.ok(id.startsWith('app.comp.container/'));const p=[...path,j,1];assert.equal(show(id,p),v);replace(id,p,next);pair[1]=next;counts.css++;sites.push({id,path:p,before:v,after:next});}
  }
  const needsHint=id.startsWith('app.comp.container/')&&x[0]==='fn'&&JSON.stringify(x[1])===JSON.stringify(['event','dispatch!']);
  x=x.map((v,i)=>walk(v,[...path,i],id));
  if(needsHint){
    assert.deepEqual(show(id,path),original);assert.equal(original[2][0],'dispatch!');assert.ok(original.length===3||original.length===4);if(original.length===4)assert.deepEqual(original[3],['focus-text!']);
    const p=[...path,2];assert.deepEqual(show(id,p),original[2]);ops.push(['tree','insert',id,'--path','@'+p.join('.'),'--at','before','--input-format','json-ast','--code',JSON.stringify(hint)]);x.splice(2,0,structuredClone(hint));counts.domContract++;sites.push({id,path:p,inserted:hint});
  }
  if(unaryMerge){assert.equal(id,'app.comp.container/comp-container');assert.equal(original.length,2);assert.equal(original[1][0],'if');assert.deepEqual(show(id,path),original);replace(id,path,x[1]);counts.unaryMerge++;sites.push({id,path,original,replacement:x[1]});return x[1];}
  return x;
}
for(const d of expected.defs)d.code=walk(d.code,[],d.id);
const reader=expected.defs.find(d=>d.id==='app.comp.container/event-value');
const args=reader.schema.find(x=>Array.isArray(x)&&x[0]===':args')[1];assert.deepEqual(args,['[]',"'Dynamic"]);args[1]=structuredClone(event);
ops.push(['edit','schema',reader.id,'--input-format','json-ast','--code',JSON.stringify(['::',"'Fn",['{}',...reader.schema.slice(1).filter(x=>x[0]!==':kind')]])]);counts.eventSchema++;
assert.deepEqual(counts,{countToLen:2,unwrapOr:2,unwrap:1,unaryMerge:1,css:22,domContract:3,eventSchema:1});assert.equal(ops.length,32);
for(const d of before.defs)if(d.id!==reader.id)assert.deepEqual(expected.defs.find(x=>x.id===d.id).schema,d.schema);
for(const id of ['app.main/reload!','app.main/dispatch!','app.main/render-app!','app.main/repeat!','app.main/mount-target','app.main/persist-storage!','app.schema/decode-store','app.schema/decode-op','app.schema/saved-record->map','app.schema/Store','app.schema/Draft','app.schema/store','app.util/focus-text!'])assert.deepEqual(expected.defs.find(d=>d.id===id),before.defs.find(d=>d.id===id));
const beforeMain=before.defs.find(d=>d.id==='app.main/main!'),afterMain=expected.defs.find(d=>d.id===beforeMain.id);assert.equal(beforeMain.code[4][0],'match');assert.equal(beforeMain.code[5][0],'render-app!');assert.equal(afterMain.code[4][0],'match');assert.equal(afterMain.code[5][0],'render-app!');
mkdirSync('acceptance',{recursive:true});
for(const [name,value]of Object.entries({before,expected,sites,operations:ops}))writeFileSync('acceptance/'+name+'.json',JSON.stringify(value,null,2));
const txn=['edit','transaction','--file','acceptance/operations.json','--format','json'];
const preview=JSON.parse(run(...txn,'--dry-run'));assert.ok(preview.scoped_revision);
writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));writeFileSync('acceptance/applied.json',run(...txn,'--expect-revision',preview.scoped_revision));
const after={config:q('config'),namespaces:q('ns').namespaces.map(n=>q('ns',n)),defs:expected.defs.map(d=>q('def',d.id))};assert.deepEqual(after,expected);
writeFileSync('acceptance/after.json',JSON.stringify(after,null,2));writeFileSync('acceptance/snapshot-after-blob.txt',blob());
writeFileSync('acceptance/summary.json',JSON.stringify({definitions:31,tests:0,examples:0,operations:32,counts,preserved:'All metadata/ns/config/schemas except event-value actual Map input. Original11Nodeassertions unchanged;HUD/reload/dispatch/decode/Store/Draft/focus/persist/repeat fullidentity;updater onlySetcount head changed. Dynamicstyles/algorithms/order/private-title/unique-empty/Mono/storagewire/restore-first retained;0unsafe unchanged. No helpers,capslocal,casts,budgets,tests,frameworks or compiler rules.'},null,2));
