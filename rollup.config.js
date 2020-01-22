import imba from 'imba/rollup.js';
import resolve from 'rollup-plugin-node-resolve';
import commonjs from 'rollup-plugin-commonjs';
import serve from 'rollup-plugin-serve';
import livereload from 'rollup-plugin-livereload';

export default {
    input: './src/app.imba',
    output: {
        file: './public/bundle.js',
        format: 'esm',
        name: 'bundle',
        sourcemap: true
    },
    plugins: [
        imba({target: 'web'}),
        resolve({extensions: ['.imba2','.imba', '.mjs','.js','.json']}),
        commonjs(),
        process.env.SERVE ? serve({contentBase: 'public',historyApiFallback: true}) : null,
        process.env.SERVE ? livereload('public') : null
    ]
}