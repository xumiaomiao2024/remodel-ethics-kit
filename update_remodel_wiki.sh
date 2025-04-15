#!/bin/bash

# 更新 Wiki 子模块（假设 Wiki 已启用并克隆为子模块）
echo "🔄 Updating ReModel Wiki..."

# 将规范性文档推送到 wiki 子目录（假设已有子模块 wiki/）
cp docs/protocols/裂缝语言标注规范.md wiki/Crack-Language-Annotation.md
cp docs/persona_samples/人格编号样本.md wiki/Persona-UID-Structure.md

# 添加英文协议展示页（可选）
cp REMODEL_STRUCTURE_LICENSE_EN.md wiki/ReModel-License-EN.md

# 提交更新
cd wiki
git add .
git commit -m "📝 Update annotation standards and UID samples"
git push origin main
cd ..

echo "✅ Wiki updated successfully."
