import { GoogleGenerativeAI } from "@google/generative-ai";

const key = process.env.GEMINI_API_KEY;
if (!key) { console.error("Missing GEMINI_API_KEY"); process.exit(1); }

const prompt = process.argv.slice(2).join(" ").trim();
if (!prompt) { console.error('Usage: node --env-file=.env.local gemini-debug.mjs "your text"'); process.exit(1); }

const sys = "You are a senior full-stack engineer. Return a minimal, copy-pasteable fix.";
const genAI = new GoogleGenerativeAI(key);
const model = genAI.getGenerativeModel({ model: "gemini-1.5-flash" });

const result = await model.generateContent(`${sys}\n\nError:\n${prompt}`);
console.log(result.response.text());
